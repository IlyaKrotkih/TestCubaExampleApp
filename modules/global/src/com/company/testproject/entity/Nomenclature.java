package com.company.testproject.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

/**
 * Created by ila on 24.01.2017.
 */
@NamePattern("%s|name")
@Table(name = "TESTPROJECT_NOMENCLATURE")
@Entity(name = "testproject$Nomenclature")
public class Nomenclature extends StandardEntity{
    @Column(name = "NAME", nullable = false, length = 255)
    protected String name;

    public String getName()
    {
        return this.name;
    }
    public void setName(String value)
    {
        this.name = value;
    }
}
