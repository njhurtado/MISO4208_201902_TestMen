.class Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListUsersOnPaperDocArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
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
    .line 270
    const/4 v4, 0x0

    .line 271
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 272
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 273
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 275
    :cond_0
    if-nez v4, :cond_7

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "f_docId":Ljava/lang/String;
    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 278
    .local v2, "f_limit":Ljava/lang/Integer;
    sget-object v1, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->SHARED:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    .line 279
    .local v1, "f_filterBy":Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 280
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 282
    const-string v6, "doc_id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 283
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_docId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_docId":Ljava/lang/String;
    goto :goto_0

    .line 285
    :cond_1
    const-string v6, "limit"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 286
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_limit":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .restart local v2    # "f_limit":Ljava/lang/Integer;
    goto :goto_0

    .line 288
    :cond_2
    const-string v6, "filter_by"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 289
    sget-object v6, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    move-result-object v1

    goto :goto_0

    .line 292
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 295
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_5

    .line 296
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"doc_id\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 298
    :cond_5
    new-instance v5, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v0, v6, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;-><init>(Ljava/lang/String;ILcom/dropbox/core/v2/paper/UserOnPaperDocFilter;)V

    .line 303
    .local v5, "value":Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
    if-nez p2, :cond_6

    .line 304
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 306
    :cond_6
    return-object v5

    .line 301
    .end local v0    # "f_docId":Ljava/lang/String;
    .end local v1    # "f_filterBy":Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;
    .end local v2    # "f_limit":Ljava/lang/Integer;
    .end local v5    # "value":Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
    :cond_7
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
    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 253
    if-nez p3, :cond_0

    .line 254
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 256
    :cond_0
    const-string v0, "doc_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->docId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 258
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 260
    const-string v0, "filter_by"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;->serialize(Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 262
    if-nez p3, :cond_1

    .line 263
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 265
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
    .line 248
    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
