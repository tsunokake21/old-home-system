package deleteDAO;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteDAO {
	
	private static Connection getConnection1() throws URISyntaxException, SQLException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		URI dbUri = new URI(System.getenv("DATABASE_URL"));
		String username = dbUri.getUserInfo().split(":")[0];
		String password = dbUri.getUserInfo().split(":")[1];
		String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();
		
		return DriverManager.getConnection(dbUrl, username, password);
		}
	
	public static int deleteAccount(String id) {
		String sql = "DELETE FROM old-home WHERE id = ?";
		
		int result = 0;
		
		try (
				Connection con = getConnection1();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			
			pstmt.setString(1, id);
						
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}  catch (URISyntaxException e) {
			e.printStackTrace();
		} finally {
			System.out.println(result + "件削除しました");
		}
		return result;
	}
	}

