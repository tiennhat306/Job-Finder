package enums;

public enum RecruitmentScale {
    ONE(1, "Ít hơn 10"),
    TWO(2, "10 - 24"),
    THREE(3, "25 - 99"),
    FOUR(4, "100 - 499"),
    FIVE(5, "Trên 500");

    private final int value;
    private final String description;

    RecruitmentScale(int value, String description) {
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

    public static RecruitmentScale getByValue(int value) {
        for (RecruitmentScale scale : RecruitmentScale.values()) {
            if (scale.value == value) {
                return scale;
            }
        }
        throw new IllegalArgumentException("Invalid value: " + value);
    }
}
