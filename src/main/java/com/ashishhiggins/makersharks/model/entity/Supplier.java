package com.ashishhiggins.makersharks.model.entity;

import com.ashishhiggins.makersharks.model.ManufacturingProcess;
import com.ashishhiggins.makersharks.model.NatureOfBusiness;
import jakarta.persistence.*;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;
import java.util.UUID;
@Getter@Setter@NoArgsConstructor
@Entity
@Table(name = "supplier")
public class Supplier {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "supplier_id")
    private UUID supplierId;

    @Column(name = "company_name")
    private String companyName;

    @Column(name = "website")
    private String website;

    @Column(name = "location")
    private String location;

    @Column(name = "nature_of_business")
    @Enumerated(EnumType.STRING)
    private NatureOfBusiness natureOfBusiness;

    @ElementCollection(targetClass = ManufacturingProcess.class)
    @Enumerated(EnumType.STRING)
    @CollectionTable(name = "supplier_manufacturing_processes",
            joinColumns = @JoinColumn(name = "supplier_id"))
    @Column(name = "manufacturing_process")
    private Set<ManufacturingProcess> manufacturingProcesses;
}
