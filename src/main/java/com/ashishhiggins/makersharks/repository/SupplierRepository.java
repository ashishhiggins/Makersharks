package com.ashishhiggins.makersharks.repository;

import com.ashishhiggins.makersharks.model.ManufacturingProcess;
import com.ashishhiggins.makersharks.model.NatureOfBusiness;
import com.ashishhiggins.makersharks.model.entity.Supplier;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;
@Repository
public interface SupplierRepository extends JpaRepository<Supplier, UUID> {

    Page<Supplier> findByLocationAndNatureOfBusinessAndManufacturingProcessesContains(
            String location,
            NatureOfBusiness natureOfBusiness,
            ManufacturingProcess manufacturingProcess,
            Pageable pageable);

}
