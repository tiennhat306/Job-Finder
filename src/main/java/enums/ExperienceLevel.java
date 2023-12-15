package enums;

public enum ExperienceLevel {
    LEVEL_1(1, "0 - 1 năm kinh nghiệm"),
    LEVEL_2(2, "1 - 2 năm kinh nghiệm"),
    LEVEL_3(3, "2 - 5 năm kinh nghiệm"),
    LEVEL_4(4, "5 - 10 năm kinh nghiệm"),
    LEVEL_5(5, "Hơn 10 năm kinh nghiệm");

    private final int value;
    private final String description;

    ExperienceLevel(int value, String description) {
        this.value = value;
        this.description = description;
    }

    public int getValue() {
        return value;
    }


    @Override
    public String toString() {
        return description;
    }

    public static ExperienceLevel getByYearsOfExperience(int value) {
        for (ExperienceLevel level : ExperienceLevel.values()) {
            if (level.value == value) {
                return level;
            }
        }
        throw new IllegalArgumentException("Invalid years of experience: " + value);
    }
}