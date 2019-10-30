.class Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TeamMemberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/TeamMemberInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v4, 0x0

    .line 172
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 173
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 174
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 176
    :cond_0
    if-nez v4, :cond_8

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "f_teamInfo":Lcom/dropbox/core/v2/users/Team;
    const/4 v0, 0x0

    .line 179
    .local v0, "f_displayName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 180
    .local v1, "f_memberId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 181
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 183
    const-string v6, "team_info"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 184
    sget-object v6, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/users/Team$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_teamInfo":Lcom/dropbox/core/v2/users/Team;
    check-cast v2, Lcom/dropbox/core/v2/users/Team;

    .restart local v2    # "f_teamInfo":Lcom/dropbox/core/v2/users/Team;
    goto :goto_0

    .line 186
    :cond_1
    const-string v6, "display_name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 187
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_displayName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_displayName":Ljava/lang/String;
    goto :goto_0

    .line 189
    :cond_2
    const-string v6, "member_id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_memberId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_memberId":Ljava/lang/String;
    goto :goto_0

    .line 193
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 196
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 197
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"team_info\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 199
    :cond_5
    if-nez v0, :cond_6

    .line 200
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"display_name\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 202
    :cond_6
    new-instance v5, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    invoke-direct {v5, v2, v0, v1}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;-><init>(Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v5, "value":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    if-nez p2, :cond_7

    .line 208
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 210
    :cond_7
    return-object v5

    .line 205
    .end local v0    # "f_displayName":Ljava/lang/String;
    .end local v1    # "f_memberId":Ljava/lang/String;
    .end local v2    # "f_teamInfo":Lcom/dropbox/core/v2/users/Team;
    .end local v5    # "value":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    :cond_8
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No subtype found that matches tag: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6
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
    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 152
    if-nez p3, :cond_0

    .line 153
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 155
    :cond_0
    const-string v0, "team_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/users/Team$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 157
    const-string v0, "display_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 159
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "member_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 163
    :cond_1
    if-nez p3, :cond_2

    .line 164
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 166
    :cond_2
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
    .line 147
    check-cast p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
