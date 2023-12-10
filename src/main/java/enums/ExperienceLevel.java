package enums;

public enum ExperienceLevel {
    LEVEL_1(0, 1, "0 - 1 năm kinh nghiệm"),
    LEVEL_2(1, 2, "1 - 2 năm kinh nghiệm"),
    LEVEL_3(2, 5, "2 - 5 năm kinh nghiệm"),
    LEVEL_4(5, 10, "5 - 10 năm kinh nghiệm"),
    LEVEL_5(10, Integer.MAX_VALUE, "Hơn 10 năm kinh nghiệm");

    private final int minYears;
    private final int maxYears;
    private final String description;

    ExperienceLevel(int minYears, int maxYears, String description) {
        this.minYears = minYears;
        this.maxYears = maxYears;
        this.description = description;
    }

    public int getMinYears() {
        return minYears;
    }

    public int getMaxYears() {
        return maxYears;
    }

    @Override
    public String toString() {
        return description;
    }

    public static ExperienceLevel getByYearsOfExperience(int yearsOfExperience) {
        for (ExperienceLevel level : ExperienceLevel.values()) {
            if (yearsOfExperience >= level.minYears && yearsOfExperience <= level.maxYears) {
                return level;
            }
        }
        throw new IllegalArgumentException("Invalid years of experience: " + yearsOfExperience);
    }
}