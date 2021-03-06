package cn.edu.nju.software.dochub.data.dataobject;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Tag entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "tag", catalog = "doc_hub", uniqueConstraints = @UniqueConstraint(columnNames = "name"))
public class Tag implements java.io.Serializable {

    // Fields

    private Integer id;
    private String name;
    private Set<Tagging> taggings = new HashSet<Tagging>(0);

    // Constructors

    /**
     * default constructor
     */
    public Tag() {
    }

    /**
     * minimal constructor
     */
    public Tag(String name) {
        this.name = name;
    }

    /**
     * full constructor
     */
    public Tag(String name, Set<Tagging> taggings) {
        this.name = name;
        this.taggings = taggings;
    }

    // Property accessors
    @GenericGenerator(name = "generator", strategy = "increment")
    @Id
    @GeneratedValue(generator = "generator")
    @Column(name = "id", unique = true, nullable = false)
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "name", unique = true, nullable = false, length = 45)
    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "tag")
    public Set<Tagging> getTaggings() {
        return this.taggings;
    }

    public void setTaggings(Set<Tagging> taggings) {
        this.taggings = taggings;
    }

}