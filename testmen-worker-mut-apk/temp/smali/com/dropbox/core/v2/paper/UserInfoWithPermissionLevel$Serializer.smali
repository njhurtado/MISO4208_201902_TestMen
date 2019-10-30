.class Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "UserInfoWithPermissionLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 132
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 134
    :cond_0
    if-nez v3, :cond_7

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    const/4 v0, 0x0

    .line 137
    .local v0, "f_permissionLevel":Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 138
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 140
    const-string v5, "user"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    sget-object v5, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    check-cast v1, Lcom/dropbox/core/v2/sharing/UserInfo;

    .restart local v1    # "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    goto :goto_0

    .line 143
    :cond_1
    const-string v5, "permission_level"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 144
    sget-object v5, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 150
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    .line 151
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"user\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 153
    :cond_4
    if-nez v0, :cond_5

    .line 154
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"permission_level\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;

    invoke-direct {v4, v1, v0}, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;-><init>(Lcom/dropbox/core/v2/sharing/UserInfo;Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;)V

    .line 161
    .local v4, "value":Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;
    if-nez p2, :cond_6

    .line 162
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 164
    :cond_6
    return-object v4

    .line 159
    .end local v0    # "f_permissionLevel":Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;
    .end local v1    # "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    .end local v4    # "value":Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;
    :cond_7
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No subtype found that matches tag: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5
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
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 114
    if-nez p3, :cond_0

    .line 115
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 117
    :cond_0
    const-string v0, "user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 119
    const-string v0, "permission_level"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 121
    if-nez p3, :cond_1

    .line 122
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 124
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
    .line 109
    check-cast p1, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;->serialize(Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
