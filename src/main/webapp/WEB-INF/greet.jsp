
<%
String baseURL=getBaseUrl(request);
System.out.println("Base URL: "+baseURL);
%>

<%!
    public String getBaseUrl(jakarta.servlet.http.HttpServletRequest request) {
        String scheme = request.getScheme(); // http or https
        String serverName = request.getServerName(); // hostname
        int serverPort = request.getServerPort(); // port
        String contextPath = request.getContextPath(); // context path (e.g., /myapp)

        StringBuilder baseUrl = new StringBuilder();
        baseUrl.append(scheme).append("://").append(serverName);

        // Only add port if it's not the default port (80 for HTTP, 443 for HTTPS)
        if (("http".equals(scheme) && serverPort != 80) || ("https".equals(scheme) && serverPort != 443)) {
            baseUrl.append(":").append(serverPort);
        }

        baseUrl.append(contextPath);

        return baseUrl.toString();
    }
    
    public String invokeAPI(){
    
    
    	return "";
    }
%>

<html>
<body>
<h2>Hello World!</h2>
<h1>Base URL: <%= getBaseUrl(request) %></h1>
<form action="helloWorld" method="post">
        <!-- Input fields and other form elements can go here -->
        
        <!-- Submit button -->
        <input type="submit" value="Submit">
    </form>
</body>
</html>
