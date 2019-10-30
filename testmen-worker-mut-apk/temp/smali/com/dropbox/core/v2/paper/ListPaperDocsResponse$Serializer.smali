.class Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListPaperDocsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
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
    .line 170
    const/4 v4, 0x0

    .line 171
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 172
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 173
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 175
    :cond_0
    if-nez v4, :cond_9

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "f_docIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 178
    .local v0, "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    const/4 v2, 0x0

    .line 179
    .local v2, "f_hasMore":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 180
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 182
    const-string v6, "doc_ids"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_docIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_docIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 185
    :cond_1
    const-string v6, "cursor"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    sget-object v6, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Cursor$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    check-cast v0, Lcom/dropbox/core/v2/paper/Cursor;

    .restart local v0    # "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    goto :goto_0

    .line 188
    :cond_2
    const-string v6, "has_more"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 189
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_hasMore":Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;

    .restart local v2    # "f_hasMore":Ljava/lang/Boolean;
    goto :goto_0

    .line 192
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 195
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    .line 196
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"doc_ids\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 198
    :cond_5
    if-nez v0, :cond_6

    .line 199
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"cursor\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 201
    :cond_6
    if-nez v2, :cond_7

    .line 202
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"has_more\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 204
    :cond_7
    new-instance v5, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v5, v1, v0, v6}, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/paper/Cursor;Z)V

    .line 209
    .local v5, "value":Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    if-nez p2, :cond_8

    .line 210
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 212
    :cond_8
    return-object v5

    .line 207
    .end local v0    # "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    .end local v1    # "f_docIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "f_hasMore":Ljava/lang/Boolean;
    .end local v5    # "value":Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
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
    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p3, :cond_0

    .line 154
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 156
    :cond_0
    const-string v0, "doc_ids"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->docIds:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 158
    const-string v0, "cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Cursor$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 160
    const-string v0, "has_more"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->hasMore:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 162
    if-nez p3, :cond_1

    .line 163
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 165
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
    .line 148
    check-cast p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
