.class Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListUsersOnFolderArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;
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
    .line 144
    const/4 v3, 0x0

    .line 145
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 146
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 147
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 149
    :cond_0
    if-nez v3, :cond_6

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "f_docId":Ljava/lang/String;
    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 152
    .local v1, "f_limit":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 153
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 155
    const-string v5, "doc_id"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_docId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_docId":Ljava/lang/String;
    goto :goto_0

    .line 158
    :cond_1
    const-string v5, "limit"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_limit":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "f_limit":Ljava/lang/Integer;
    goto :goto_0

    .line 162
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 165
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 166
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"doc_id\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 168
    :cond_4
    new-instance v4, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v0, v5}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;-><init>(Ljava/lang/String;I)V

    .line 173
    .local v4, "value":Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;
    if-nez p2, :cond_5

    .line 174
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 176
    :cond_5
    return-object v4

    .line 171
    .end local v0    # "f_docId":Ljava/lang/String;
    .end local v1    # "f_limit":Ljava/lang/Integer;
    .end local v4    # "value":Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;
    :cond_6
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
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 129
    if-nez p3, :cond_0

    .line 130
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 132
    :cond_0
    const-string v0, "doc_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->docId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 134
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 136
    if-nez p3, :cond_1

    .line 137
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 139
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
    .line 124
    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
