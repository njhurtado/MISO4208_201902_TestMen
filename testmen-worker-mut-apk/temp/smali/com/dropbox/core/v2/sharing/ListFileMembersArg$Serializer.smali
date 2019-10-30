.class Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListFileMembersArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListFileMembersArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
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
    .line 345
    const/4 v9, 0x0

    .line 346
    .local v9, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 347
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 348
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v9

    .line 350
    :cond_0
    if-nez v9, :cond_8

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, "f_file":Ljava/lang/String;
    const/4 v2, 0x0

    .line 353
    .local v2, "f_actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberAction;>;"
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 354
    .local v6, "f_includeInherited":Ljava/lang/Boolean;
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 355
    .local v7, "f_limit":Ljava/lang/Long;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_5

    .line 356
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 358
    const-string v3, "file"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_file":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_file":Ljava/lang/String;
    goto :goto_0

    .line 361
    :cond_1
    const-string v3, "actions"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    sget-object v3, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberAction;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2    # "f_actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberAction;>;"
    goto :goto_0

    .line 364
    :cond_2
    const-string v3, "include_inherited"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 365
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_includeInherited":Ljava/lang/Boolean;
    check-cast v6, Ljava/lang/Boolean;

    .restart local v6    # "f_includeInherited":Ljava/lang/Boolean;
    goto :goto_0

    .line 367
    :cond_3
    const-string v3, "limit"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 368
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_limit":Ljava/lang/Long;
    check-cast v7, Ljava/lang/Long;

    .restart local v7    # "f_limit":Ljava/lang/Long;
    goto :goto_0

    .line 371
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 374
    .end local v8    # "field":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_6

    .line 375
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field \"file\" missing."

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 377
    :cond_6
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;-><init>(Ljava/lang/String;Ljava/util/List;ZJ)V

    .line 382
    .local v0, "value":Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
    if-nez p2, :cond_7

    .line 383
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 385
    :cond_7
    return-object v0

    .line 380
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
    .end local v1    # "f_file":Ljava/lang/String;
    .end local v2    # "f_actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberAction;>;"
    .end local v6    # "f_includeInherited":Ljava/lang/Boolean;
    .end local v7    # "f_limit":Ljava/lang/Long;
    :cond_8
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No subtype found that matches tag: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3
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
    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ListFileMembersArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListFileMembersArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 324
    if-nez p3, :cond_0

    .line 325
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 327
    :cond_0
    const-string v0, "file"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 329
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 330
    const-string v0, "actions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 333
    :cond_1
    const-string v0, "include_inherited"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->includeInherited:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 335
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->limit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 337
    if-nez p3, :cond_2

    .line 338
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 340
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
    .line 319
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListFileMembersArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
