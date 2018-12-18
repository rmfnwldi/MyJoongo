package Report.DAO;

import java.util.List;

import Report.DTO.Report;
import Report.DTO.ReportCategory;
import User.DAO.Query;

@Query
public interface ReportMapper {
	void insertReport(Report report);
	List<Report> selectReportList();
	List<Report> selectReportListByUser(int userNo);
	List<ReportCategory> selectReportCategory();
}
