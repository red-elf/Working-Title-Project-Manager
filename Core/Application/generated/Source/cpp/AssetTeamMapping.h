/*
    AssetTeamMapping.h
    Generated with 'sql2code' 0.0.1
    https://github.com/red-elf/SQL-to-Code
*/

#include "string"

class AssetTeamMapping {

private:
    std::string id;
    std::string assetId;
    std::string teamId;
    int created;
    int modified;
    bool deleted;

public:
    std::string getId();
    void setId(std::string value);
    std::string getAssetId();
    void setAssetId(std::string value);
    std::string getTeamId();
    void setTeamId(std::string value);
    int getCreated();
    void setCreated(int value);
    int getModified();
    void setModified(int value);
    bool isDeleted();
    void setDeleted(bool value);
};