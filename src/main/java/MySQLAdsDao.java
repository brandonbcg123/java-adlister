import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection;

    public MySQLAdsDao() {
        try {
            DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection(
                    Config.getUrl(),
                    Config.getUser(),
                    Config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
        String query = "SELECT * FROM ads";

        List<Ad> ads = new ArrayList();
        try {
            Statement stmt = connection.createStatement();
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
        String query =
            String.format(
                "INSERT INTO ads(user_id, title, description) Values ('%d','%s', '%s')",
                ad.getUserId(),
                ad.getTitle(),
                ad.getDescription()
            );

        try {
            Statement stmt = connection.createStatement();
              stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
              ResultSet rs = stmt.getGeneratedKeys();
              if (rs.next()) {
                  return rs.getLong(1);
              }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0L;
    }
}