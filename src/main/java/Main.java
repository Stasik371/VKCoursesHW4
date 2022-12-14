import org.flywaydb.core.Flyway;
import org.jetbrains.annotations.NotNull;

public class Main {
    public static final @NotNull
    String CONNECTION = "jdbc:postgresql://127.0.0.1:5432/";
    public static final @NotNull String DB_NAME = "db1";
    public static final @NotNull String USERNAME = "postgres";
    public static final @NotNull String PASSWORD = "postgre";

    public static void main(@NotNull String[] args) {
        final Flyway flyway = Flyway
                .configure()
                .dataSource(CONNECTION + DB_NAME, USERNAME, PASSWORD)
                .locations("sql")
                .load();
        flyway.migrate();
        System.out.println("Migrations applied successfully");
    }
}
