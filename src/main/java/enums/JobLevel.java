package enums;

public enum JobLevel {
    STUDENT_INTERN(1, "Sinh viên/Thực tập sinh"),
    ENTRY_LEVEL(2, "Mới đi làm"),
    EMPLOYEE(3, "Nhân viên"),
    ENGINEER(4, "Kỹ sư"),
    MANAGER(5, "Quản lý");

    private final int value;
    private final String description;

    JobLevel(int value, String description) {
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

    public static JobLevel getByValue(int value) {
        for (JobLevel level : JobLevel.values()) {
            if (level.value == value) {
                return level;
            }
        }
        throw new IllegalArgumentException("Invalid value: " + value);
    }
}