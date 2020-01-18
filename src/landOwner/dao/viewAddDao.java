package landOwner.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;



import landOwner.*;

public class viewAddDao{

    private DataSource dataSource;

    public viewAddDao(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public List<viewAdd> list() throws SQLException {
        List<viewAdd> products = new ArrayList<viewAdd>();

        try (
            Connection connection = dataSource.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM postadd");
            ResultSet resultSet = statement.executeQuery();
        ) {
            while (resultSet.next()) {
                viewAdd viewadd= new viewAdd();
                viewadd.setPrice(resultSet.getString("id"));
//                product.setName(resultSet.getString("name"));
//                product.setDescription(resultSet.getString("description"));
//                product.setPrice(resultSet.getBigDecimal("price"));
//                products.add(product);
            }
        }

        return products;
    }

}
