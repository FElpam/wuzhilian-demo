package vip.wuzhilian.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import vip.wuzhilian.bean.Costume;
import vip.wuzhilian.bean.CostumeExample;

public interface CostumeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table costumes
     *
     * @mbg.generated Mon Jul 29 22:34:28 CST 2019
     */
    long countByExample(CostumeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table costumes
     *
     * @mbg.generated Mon Jul 29 22:34:28 CST 2019
     */
    int deleteByExample(CostumeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table costumes
     *
     * @mbg.generated Mon Jul 29 22:34:28 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table costumes
     *
     * @mbg.generated Mon Jul 29 22:34:28 CST 2019
     */
    int insert(Costume record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table costumes
     *
     * @mbg.generated Mon Jul 29 22:34:28 CST 2019
     */
    int insertSelective(Costume record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table costumes
     *
     * @mbg.generated Mon Jul 29 22:34:28 CST 2019
     */
    List<Costume> selectByExample(CostumeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table costumes
     *
     * @mbg.generated Mon Jul 29 22:34:28 CST 2019
     */
    Costume selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table costumes
     *
     * @mbg.generated Mon Jul 29 22:34:28 CST 2019
     */
    int updateByExampleSelective(@Param("record") Costume record, @Param("example") CostumeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table costumes
     *
     * @mbg.generated Mon Jul 29 22:34:28 CST 2019
     */
    int updateByExample(@Param("record") Costume record, @Param("example") CostumeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table costumes
     *
     * @mbg.generated Mon Jul 29 22:34:28 CST 2019
     */
    int updateByPrimaryKeySelective(Costume record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table costumes
     *
     * @mbg.generated Mon Jul 29 22:34:28 CST 2019
     */
    int updateByPrimaryKey(Costume record);
}