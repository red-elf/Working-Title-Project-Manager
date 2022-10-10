/*
    LabelProjectMapping.h
    Generated with 'sql2code' 0.0.2
    https://github.com/red-elf/SQL-to-Code
*/

#include "string"

class LabelProjectMapping {

private:
    std::string id;
    std::string labelId;
    std::string projectId;
    int created;
    int modified;
    bool deleted;

public:
    std::string getId();
    void setId(std::string &value);
    std::string getLabelId();
    void setLabelId(std::string &value);
    std::string getProjectId();
    void setProjectId(std::string &value);
    int getCreated();
    void setCreated(int &value);
    int getModified();
    void setModified(int &value);
    bool isDeleted();
    void setDeleted(bool &value);
};