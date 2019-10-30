.class Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TeamFolderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamFolderMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamFolderMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
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
    .line 155
    const/4 v4, 0x0

    .line 156
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 157
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 158
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 160
    :cond_0
    if-nez v4, :cond_9

    .line 161
    const/4 v2, 0x0

    .line 162
    .local v2, "f_teamFolderId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 163
    .local v0, "f_name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 164
    .local v1, "f_status":Lcom/dropbox/core/v2/team/TeamFolderStatus;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 165
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 167
    const-string v6, "team_folder_id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 168
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_teamFolderId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_teamFolderId":Ljava/lang/String;
    goto :goto_0

    .line 170
    :cond_1
    const-string v6, "name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_name":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 173
    :cond_2
    const-string v6, "status"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 174
    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderStatus;

    move-result-object v1

    goto :goto_0

    .line 177
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 180
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 181
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"team_folder_id\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 183
    :cond_5
    if-nez v0, :cond_6

    .line 184
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"name\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 186
    :cond_6
    if-nez v1, :cond_7

    .line 187
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"status\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 189
    :cond_7
    new-instance v5, Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    invoke-direct {v5, v2, v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/TeamFolderStatus;)V

    .line 194
    .local v5, "value":Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    if-nez p2, :cond_8

    .line 195
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 197
    :cond_8
    return-object v5

    .line 192
    .end local v0    # "f_name":Ljava/lang/String;
    .end local v1    # "f_status":Lcom/dropbox/core/v2/team/TeamFolderStatus;
    .end local v2    # "f_teamFolderId":Ljava/lang/String;
    .end local v5    # "value":Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    :cond_9
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
    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamFolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 138
    if-nez p3, :cond_0

    .line 139
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 141
    :cond_0
    const-string v0, "team_folder_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 143
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 145
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 147
    if-nez p3, :cond_1

    .line 148
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 150
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
    .line 133
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
