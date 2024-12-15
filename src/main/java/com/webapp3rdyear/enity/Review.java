package com.webapp3rdyear.enity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "Reivew")
@NamedQuery(name = "Review.findAll", query = "SELECT re FROM Review re")
public class Review implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @ManyToOne
    @JoinColumn(name = "OrderID")
    private Orders OrderID;

    @Id
    @ManyToOne
    @JoinColumn(name = "ProductID")
    private Products ProductID;

    @Column(name = "Quantity", columnDefinition = "Int")
    private int quantity;

    @Column(name = "Content", columnDefinition = "LONGTEXT NULL")
    private String content;

    @Column(name = "EvaluationDate", columnDefinition = "DATE")
    private String evaluationDate;
}
