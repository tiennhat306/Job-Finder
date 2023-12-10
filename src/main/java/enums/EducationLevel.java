package enums;

public enum EducationLevel {
    HIGH_SCHOOL(1, "THPT"),
    CERTIFICATE(2, "Chứng chỉ"),
    INTERMEDIATE(3, "Trung cấp"),
    COLLEGE(4, "Cao đẳng"),
    BACHELOR(5, "Cử nhân"),
    ENGINEER(6, "Kỹ sư"),
    MASTER(7, "Thạc sĩ"),
    DOCTORATE(8, "Tiến sĩ");

    private final int value;
    private final String description;

    EducationLevel(int value, String description) {
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

    public static EducationLevel getByValue(int value) {
        for (EducationLevel level : EducationLevel.values()) {
            if (level.value == value) {
                return level;
            }
        }
        throw new IllegalArgumentException("Invalid value: " + value);
    }
}
