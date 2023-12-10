package enums;

public enum Category {
    ELECTRONICS("Electronics"),
    FASHION("Fashion"),
    HOME("Home"),
    BOOKS("Books"),
    SPORTS("Sports"),
    TOYS("Toys"),
    OTHERS("Others");

    private final String name;

    Category(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
