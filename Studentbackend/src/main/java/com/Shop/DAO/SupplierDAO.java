
package com.Shop.DAO;

import java.util.List;

import com.Shop.Model.Supplier;

public interface SupplierDAO {
    public boolean addSupplier(Supplier supplier);
    public boolean updateSupplier(Supplier supplier);
    public boolean deleteSupplier(int supplierId);

    public Supplier getSingleSupplier(int supplierId);
    public List<Supplier> getAllSupplier();
    
}
