import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    public MySQLAdsDao() {
        try {
            this.connection = DriverManager.getConnection(
                    Config.getUrl(),
                    Config.getUser(),
                    Config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private Connection connection;

    @Override

    public List<Ad> all() {
        String query = "SELECT * FROM ads";

        List<Ad> ads = new ArrayList();
        Statement stmt = null;
        try {
            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Long id = rs.getLong("id");
                Long user_id = rs.getLong("user_id");
                String title = rs.getString("title");
                String description = rs.getString("description");

                Ad ad = new Ad(id, user_id, title, description);
                ads.add(ad);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }
}
