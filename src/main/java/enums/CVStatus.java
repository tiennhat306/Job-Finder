package enums;

public enum CVStatus {
    KIEM_TRA_HO_SO(1, "Kiểm tra hồ sơ"),
    DA_DUYET(2, "Đã duyệt"),
    TU_CHOI(3, "Từ chối");

    private final int value;
    private final String description;

    CVStatus(int value, String description) {
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

    public static CVStatus getByValue(int value) {
        for (CVStatus type : CVStatus.values()) {
            if (type.value == value) {
                return type;
            }
        }
        throw new IllegalArgumentException("Invalid value: " + value);
    }
}
