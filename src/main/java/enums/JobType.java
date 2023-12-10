package enums;

public enum JobType {
    FULL_TIME(1, "Toàn thời gian"),
    PART_TIME(2, "Bán thời gian"),
    CONTRACT(3, "Hợp đồng");

    private final int value;
    private final String description;

    JobType(int value, String description) {
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

    public static JobType getByValue(int value) {
        for (JobType type : JobType.values()) {
            if (type.value == value) {
                return type;
            }
        }
        throw new IllegalArgumentException("Invalid value: " + value);
    }
}