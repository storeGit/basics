package com.ameen.idgenerator;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.id.IdentifierGenerator;

import com.mysql.jdbc.StringUtils;


public class AddressIdenerator implements IdentifierGenerator {

	public Serializable generate(SessionImplementor session, Object object) throws HibernateException {
		String prefix = "M";
        Connection connection = session.connection();
        try {

            PreparedStatement ps = connection
                    .prepareStatement("SELECT nextval ('seq_stock_code') as nextval");

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("nextval");
                String code = null;// = prefix + StringUtils.leftPad("" + id,3, '0');
                return code;
            }

        } catch (SQLException e) {
            throw new HibernateException(
                    "Unable to generate Stock Code Sequence");
        }
        return null;
    }

}
