package com.javatpoint.dao;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;  
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;


import com.javatpoint.beans.User;



 
  
public class ClientDaoImpl {  
JdbcTemplate template;  
  
public void setTemplate(JdbcTemplate template) {  
    this.template = template;  
}  
public int addClientDetails(User user){  
    String sql="insert into ClientDetails(clientname,contactperson,phoneno,mobileno,emailid,website,street1,street2,state,zipcode,country) values('"+user.getClientname()+"','"+user.getContactperson()+"','"+user.getPhoneno()+"','"+user.getMobileno()+"','"+user.getEmailid()+"','"+user.getWebsite()+"','"+user.getStreet1()+"','"+user.getStreet2()+"','"+user.getState()+"','"+user.getZipcode()+"','"+user.getCountry()+"')";  
    return template.update(sql);  
} 

public int update(User user){  
    String sql="update ClientDetails set clientname='"+user.getClientname()+"',contactperson='"+user.getContactperson()+"',phoneno='"+user.getPhoneno()+"',mobileno='"+user.getMobileno()+"',emailid='"+user.getEmailid()+"',website='"+user.getWebsite()+"',street1='"+user.getStreet1()+"',street2='"+user.getStreet2()+"',state='"+user.getState()+"',zipcode='"+user.getZipcode()+"',country='"+user.getCountry()+"' where mobileno='"+user.getMobileno()+"'";  
    return template.update(sql);  
}

public User getClientBymobileno(String mobileno){  
    String sql="select * from ClientDetails where mobileno=?";  
    return template.queryForObject(sql, new Object[]{mobileno},new BeanPropertyRowMapper<User>(User.class));
}
public List<User> getclient(){  
    return template.query("select * from ClientDetails",new RowMapper<User>(){  
        public User mapRow(ResultSet rs, int row) throws SQLException {  
            User u=new User();  
            u.setClientname(rs.getString(1));  
            u.setContactperson(rs.getString(2));  
            u.setPhoneno(rs.getString(3));  
            u.setMobileno(rs.getString(4));
            u.setEmailid(rs.getString(5));
            u.setWebsite(rs.getString(6));
            u.setStreet1(rs.getString(7));
            u.setStreet2(rs.getString(8));
            u.setState(rs.getString(9));
            u.setZipcode(rs.getString(10));
            u.setCountry(rs.getString(11));
            return u;  
        }  
    });  
}  

}
    

