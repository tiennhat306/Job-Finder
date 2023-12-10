package DTO;

import java.sql.Date;

public class CVInfoItem {
    private int numCandidate;
    private int view;
    private Date publishDay;

    public CVInfoItem(int numCandidate, int view, Date publishDay) {
        this.numCandidate = numCandidate;
        this.view = view;
        this.publishDay = publishDay;
    }

    public int getNumCandidate() {
        return numCandidate;
    }

    public void setNumCandidate(int numCandidate) {
        this.numCandidate = numCandidate;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    public Date getPublishDay() {
        return publishDay;
    }

    public void setPublishDay(Date publishDay) {
        this.publishDay = publishDay;
    }
}
