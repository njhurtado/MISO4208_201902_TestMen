.class Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TeamGetInfoResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamGetInfoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamGetInfoResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamGetInfoResult;
    .locals 12
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v11, 0x0

    .line 181
    .local v11, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 182
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 183
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v11

    .line 185
    :cond_0
    if-nez v11, :cond_d

    .line 186
    const/4 v2, 0x0

    .line 187
    .local v2, "f_name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 188
    .local v3, "f_teamId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 189
    .local v0, "f_numLicensedUsers":Ljava/lang/Long;
    const/4 v9, 0x0

    .line 190
    .local v9, "f_numProvisionedUsers":Ljava/lang/Long;
    const/4 v8, 0x0

    .line 191
    .local v8, "f_policies":Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_6

    .line 192
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    .line 193
    .local v10, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 194
    const-string v4, "name"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_name":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 197
    :cond_1
    const-string v4, "team_id"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_teamId":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_teamId":Ljava/lang/String;
    goto :goto_0

    .line 200
    :cond_2
    const-string v4, "num_licensed_users"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 201
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_numLicensedUsers":Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;

    .restart local v0    # "f_numLicensedUsers":Ljava/lang/Long;
    goto :goto_0

    .line 203
    :cond_3
    const-string v4, "num_provisioned_users"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 204
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_numProvisionedUsers":Ljava/lang/Long;
    check-cast v9, Ljava/lang/Long;

    .restart local v9    # "f_numProvisionedUsers":Ljava/lang/Long;
    goto :goto_0

    .line 206
    :cond_4
    const-string v4, "policies"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 207
    sget-object v4, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_policies":Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;
    check-cast v8, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    .restart local v8    # "f_policies":Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;
    goto :goto_0

    .line 210
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 213
    .end local v10    # "field":Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 214
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"name\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 216
    :cond_7
    if-nez v3, :cond_8

    .line 217
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"team_id\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_8
    if-nez v0, :cond_9

    .line 220
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"num_licensed_users\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_9
    if-nez v9, :cond_a

    .line 223
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"num_provisioned_users\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 225
    :cond_a
    if-nez v8, :cond_b

    .line 226
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"policies\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 228
    :cond_b
    new-instance v1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/core/v2/team/TeamGetInfoResult;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;)V

    .line 233
    .local v1, "value":Lcom/dropbox/core/v2/team/TeamGetInfoResult;
    if-nez p2, :cond_c

    .line 234
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 236
    :cond_c
    return-object v1

    .line 231
    .end local v0    # "f_numLicensedUsers":Ljava/lang/Long;
    .end local v1    # "value":Lcom/dropbox/core/v2/team/TeamGetInfoResult;
    .end local v2    # "f_name":Ljava/lang/String;
    .end local v3    # "f_teamId":Ljava/lang/String;
    .end local v8    # "f_policies":Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;
    .end local v9    # "f_numProvisionedUsers":Ljava/lang/Long;
    :cond_d
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No subtype found that matches tag: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamGetInfoResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamGetInfoResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamGetInfoResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 159
    if-nez p3, :cond_0

    .line 160
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 162
    :cond_0
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 164
    const-string v0, "team_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->teamId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 166
    const-string v0, "num_licensed_users"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numLicensedUsers:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 168
    const-string v0, "num_provisioned_users"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numProvisionedUsers:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 170
    const-string v0, "policies"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->policies:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 172
    if-nez p3, :cond_1

    .line 173
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 175
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 154
    check-cast p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamGetInfoResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
