.class Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "AddPaperDocUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/AddPaperDocUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/AddPaperDocUser;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/AddPaperDocUser;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v5, 0x0

    .line 286
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 287
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 288
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 290
    :cond_0
    if-nez v5, :cond_9

    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, "f_docId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 293
    .local v2, "f_members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/AddMember;>;"
    const/4 v0, 0x0

    .line 294
    .local v0, "f_customMessage":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 295
    .local v3, "f_quiet":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 296
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 298
    const-string v7, "doc_id"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 299
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_docId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_docId":Ljava/lang/String;
    goto :goto_0

    .line 301
    :cond_1
    const-string v7, "members"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 302
    sget-object v7, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddMember$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/AddMember;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2    # "f_members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/AddMember;>;"
    goto :goto_0

    .line 304
    :cond_2
    const-string v7, "custom_message"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 305
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_customMessage":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_customMessage":Ljava/lang/String;
    goto :goto_0

    .line 307
    :cond_3
    const-string v7, "quiet"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 308
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_quiet":Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .restart local v3    # "f_quiet":Ljava/lang/Boolean;
    goto :goto_0

    .line 311
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 314
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_6

    .line 315
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"doc_id\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 317
    :cond_6
    if-nez v2, :cond_7

    .line 318
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"members\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 320
    :cond_7
    new-instance v6, Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v6, v1, v2, v0, v7}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 325
    .local v6, "value":Lcom/dropbox/core/v2/paper/AddPaperDocUser;
    if-nez p2, :cond_8

    .line 326
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 328
    :cond_8
    return-object v6

    .line 323
    .end local v0    # "f_customMessage":Ljava/lang/String;
    .end local v1    # "f_docId":Ljava/lang/String;
    .end local v2    # "f_members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/AddMember;>;"
    .end local v3    # "f_quiet":Ljava/lang/Boolean;
    .end local v6    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUser;
    :cond_9
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No subtype found that matches tag: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7
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
    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/AddPaperDocUser;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/AddPaperDocUser;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 264
    if-nez p3, :cond_0

    .line 265
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 267
    :cond_0
    const-string v0, "doc_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->docId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 269
    const-string v0, "members"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddMember$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 271
    iget-object v0, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 272
    const-string v0, "custom_message"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 275
    :cond_1
    const-string v0, "quiet"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->quiet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 277
    if-nez p3, :cond_2

    .line 278
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 280
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
    .line 259
    check-cast p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->serialize(Lcom/dropbox/core/v2/paper/AddPaperDocUser;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
