.class Lcom/dropbox/core/v2/team/DevicesActive$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "DevicesActive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/DevicesActive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/DevicesActive;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/DevicesActive$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DevicesActive$Serializer;

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
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/DevicesActive;
    .locals 13
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v9, 0x0

    .line 279
    .local v9, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 280
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 281
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v9

    .line 283
    :cond_0
    if-nez v9, :cond_11

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "f_windows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 286
    .local v2, "f_macos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 287
    .local v3, "f_linux":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 288
    .local v4, "f_ios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 289
    .local v5, "f_android":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 290
    .local v6, "f_other":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 291
    .local v7, "f_total":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v10

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v10, v11, :cond_8

    .line 292
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 294
    const-string v10, "windows"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 295
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_windows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_windows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 297
    :cond_1
    const-string v10, "macos"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 298
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_macos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2    # "f_macos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 300
    :cond_2
    const-string v10, "linux"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 301
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_linux":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "f_linux":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 303
    :cond_3
    const-string v10, "ios"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 304
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_ios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v4, Ljava/util/List;

    .restart local v4    # "f_ios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 306
    :cond_4
    const-string v10, "android"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 307
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_android":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v5, Ljava/util/List;

    .restart local v5    # "f_android":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 309
    :cond_5
    const-string v10, "other"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 310
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_other":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v6, Ljava/util/List;

    .restart local v6    # "f_other":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 312
    :cond_6
    const-string v10, "total"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 313
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_total":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v7, Ljava/util/List;

    .restart local v7    # "f_total":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 316
    :cond_7
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 319
    .end local v8    # "field":Ljava/lang/String;
    :cond_8
    if-nez v1, :cond_9

    .line 320
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"windows\" missing."

    invoke-direct {v10, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 322
    :cond_9
    if-nez v2, :cond_a

    .line 323
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"macos\" missing."

    invoke-direct {v10, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 325
    :cond_a
    if-nez v3, :cond_b

    .line 326
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"linux\" missing."

    invoke-direct {v10, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 328
    :cond_b
    if-nez v4, :cond_c

    .line 329
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"ios\" missing."

    invoke-direct {v10, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 331
    :cond_c
    if-nez v5, :cond_d

    .line 332
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"android\" missing."

    invoke-direct {v10, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 334
    :cond_d
    if-nez v6, :cond_e

    .line 335
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"other\" missing."

    invoke-direct {v10, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 337
    :cond_e
    if-nez v7, :cond_f

    .line 338
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"total\" missing."

    invoke-direct {v10, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 340
    :cond_f
    new-instance v0, Lcom/dropbox/core/v2/team/DevicesActive;

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/team/DevicesActive;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 345
    .local v0, "value":Lcom/dropbox/core/v2/team/DevicesActive;
    if-nez p2, :cond_10

    .line 346
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 348
    :cond_10
    return-object v0

    .line 343
    .end local v0    # "value":Lcom/dropbox/core/v2/team/DevicesActive;
    .end local v1    # "f_windows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "f_macos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "f_linux":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "f_ios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "f_android":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "f_other":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v7    # "f_total":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_11
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No subtype found that matches tag: \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10
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
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/DevicesActive;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/DevicesActive;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/DevicesActive;
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
    const-string v0, "windows"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DevicesActive;->windows:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 258
    const-string v0, "macos"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DevicesActive;->macos:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 260
    const-string v0, "linux"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DevicesActive;->linux:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 262
    const-string v0, "ios"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DevicesActive;->ios:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 264
    const-string v0, "android"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DevicesActive;->android:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 266
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DevicesActive;->other:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 268
    const-string v0, "total"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DevicesActive;->total:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 270
    if-nez p3, :cond_1

    .line 271
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 273
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
    check-cast p1, Lcom/dropbox/core/v2/team/DevicesActive;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->serialize(Lcom/dropbox/core/v2/team/DevicesActive;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
