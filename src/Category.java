public class Category {
	private String aadhar;
	private int id;
	private String severity;
	private String status;
	private String noc;
	private String statement;
	private String reply;

	public Category(int id, String aadhar, String  severity, String status, String noc, String statement, String reply) {
		super();
		this.id = id;
		this.aadhar = aadhar;
		this.severity=severity;
		this.status=status;
		this.noc=noc;
		this.statement=statement;
		this.reply=reply;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getaadhar() {
		return aadhar;
	}

	public void setaadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public String getstatement() {
		return statement;
	}

	public void setstatement(String statement) {
		this.statement = statement;
	}
	public String getstatus() {
		return status;
	}

	public void setstatus(String status) {
		this.status = status;
	}
	public String getnoc() {
		return noc;
	}

	public void setnoc(String noc) {
		this.noc = noc;
	}
	public String getseverity() {
		return severity;
	}

	public void setseverity(String severity) {
		this.severity = severity;
	}
	public String getreply() {
		return reply;
	}

	public void setreply(String reply) {
		this.reply = reply;
	}
}
