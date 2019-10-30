.class Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MemberAddResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MemberAddResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MemberAddResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 929
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1032
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 1033
    const/4 v0, 0x1

    .line 1034
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 1035
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1042
    :goto_0
    if-nez v2, :cond_1

    .line 1043
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 1038
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 1039
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1040
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 1045
    :cond_1
    const-string v4, "success"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1046
    const/4 v1, 0x0

    .line 1047
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/TeamMemberInfo;
    sget-object v4, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamMemberInfo;

    move-result-object v1

    .line 1048
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MemberAddResult;->success(Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v3

    .line 1113
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .local v3, "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :goto_1
    if-nez v0, :cond_2

    .line 1114
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1115
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1117
    :cond_2
    return-object v3

    .line 1050
    .end local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_3
    const-string v4, "team_license_limit"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1051
    const/4 v1, 0x0

    .line 1052
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v4, "team_license_limit"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1053
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1054
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimit(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v3

    .line 1055
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    goto :goto_1

    .line 1056
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_4
    const-string v4, "free_team_member_limit_reached"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1057
    const/4 v1, 0x0

    .line 1058
    .restart local v1    # "fieldValue":Ljava/lang/String;
    const-string v4, "free_team_member_limit_reached"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1059
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1060
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReached(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v3

    .line 1061
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    goto :goto_1

    .line 1062
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_5
    const-string v4, "user_already_on_team"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1063
    const/4 v1, 0x0

    .line 1064
    .restart local v1    # "fieldValue":Ljava/lang/String;
    const-string v4, "user_already_on_team"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1065
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1066
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v3

    .line 1067
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    goto :goto_1

    .line 1068
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_6
    const-string v4, "user_on_another_team"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1069
    const/4 v1, 0x0

    .line 1070
    .restart local v1    # "fieldValue":Ljava/lang/String;
    const-string v4, "user_on_another_team"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1071
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1072
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v3

    .line 1073
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    goto :goto_1

    .line 1074
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_7
    const-string v4, "user_already_paired"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1075
    const/4 v1, 0x0

    .line 1076
    .restart local v1    # "fieldValue":Ljava/lang/String;
    const-string v4, "user_already_paired"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1077
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1078
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPaired(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v3

    .line 1079
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    goto/16 :goto_1

    .line 1080
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_8
    const-string v4, "user_migration_failed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1081
    const/4 v1, 0x0

    .line 1082
    .restart local v1    # "fieldValue":Ljava/lang/String;
    const-string v4, "user_migration_failed"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1083
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1084
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v3

    .line 1085
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    goto/16 :goto_1

    .line 1086
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_9
    const-string v4, "duplicate_external_member_id"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1087
    const/4 v1, 0x0

    .line 1088
    .restart local v1    # "fieldValue":Ljava/lang/String;
    const-string v4, "duplicate_external_member_id"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1089
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1090
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v3

    .line 1091
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    goto/16 :goto_1

    .line 1092
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_a
    const-string v4, "duplicate_member_persistent_id"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1093
    const/4 v1, 0x0

    .line 1094
    .restart local v1    # "fieldValue":Ljava/lang/String;
    const-string v4, "duplicate_member_persistent_id"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1095
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1096
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v3

    .line 1097
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    goto/16 :goto_1

    .line 1098
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_b
    const-string v4, "persistent_id_disabled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1099
    const/4 v1, 0x0

    .line 1100
    .restart local v1    # "fieldValue":Ljava/lang/String;
    const-string v4, "persistent_id_disabled"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1101
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1102
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabled(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v3

    .line 1103
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    goto/16 :goto_1

    .line 1104
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_c
    const-string v4, "user_creation_failed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1105
    const/4 v1, 0x0

    .line 1106
    .restart local v1    # "fieldValue":Ljava/lang/String;
    const-string v4, "user_creation_failed"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1107
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1108
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v3

    .line 1109
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    goto/16 :goto_1

    .line 1111
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_d
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 928
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MemberAddResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MemberAddResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 933
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$1;->$SwitchMap$com$dropbox$core$v2$team$MemberAddResult$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->tag()Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1022
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->tag()Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 936
    const-string v0, "success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 937
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$000(Lcom/dropbox/core/v2/team/MemberAddResult;)Lcom/dropbox/core/v2/team/TeamMemberInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMemberInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 938
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 1025
    :goto_0
    return-void

    .line 942
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 943
    const-string v0, "team_license_limit"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 944
    const-string v0, "team_license_limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 945
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$100(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 946
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 950
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 951
    const-string v0, "free_team_member_limit_reached"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 952
    const-string v0, "free_team_member_limit_reached"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 953
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$200(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 954
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 958
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 959
    const-string v0, "user_already_on_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 960
    const-string v0, "user_already_on_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$300(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 962
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 966
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 967
    const-string v0, "user_on_another_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 968
    const-string v0, "user_on_another_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 969
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$400(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 970
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 974
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 975
    const-string v0, "user_already_paired"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 976
    const-string v0, "user_already_paired"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 977
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$500(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 978
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 982
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 983
    const-string v0, "user_migration_failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 984
    const-string v0, "user_migration_failed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 985
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$600(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 986
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 990
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 991
    const-string v0, "duplicate_external_member_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 992
    const-string v0, "duplicate_external_member_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 993
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$700(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 994
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 998
    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 999
    const-string v0, "duplicate_member_persistent_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1000
    const-string v0, "duplicate_member_persistent_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1001
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$800(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1002
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 1006
    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 1007
    const-string v0, "persistent_id_disabled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1008
    const-string v0, "persistent_id_disabled"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1009
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$900(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1010
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 1014
    :pswitch_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 1015
    const-string v0, "user_creation_failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1016
    const-string v0, "user_creation_failed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1017
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$1000(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1018
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 933
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 928
    check-cast p1, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->serialize(Lcom/dropbox/core/v2/team/MemberAddResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
