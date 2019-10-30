.class Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GetStorageReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GetStorageReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GetStorageReport;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GetStorageReport;
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
    .line 261
    const/4 v8, 0x0

    .line 262
    .local v8, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 263
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 264
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v8

    .line 266
    :cond_0
    if-nez v8, :cond_f

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "f_startDate":Ljava/lang/String;
    const/4 v2, 0x0

    .line 269
    .local v2, "f_totalUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 270
    .local v3, "f_sharedUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 271
    .local v4, "f_unsharedUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 272
    .local v5, "f_sharedFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 273
    .local v6, "f_memberStorageMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/dropbox/core/v2/team/StorageBucket;>;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v9, v10, :cond_7

    .line 274
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 276
    const-string v9, "start_date"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 277
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_startDate":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_startDate":Ljava/lang/String;
    goto :goto_0

    .line 279
    :cond_1
    const-string v9, "total_usage"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 280
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_totalUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2    # "f_totalUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 282
    :cond_2
    const-string v9, "shared_usage"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 283
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_sharedUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "f_sharedUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 285
    :cond_3
    const-string v9, "unshared_usage"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 286
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_unsharedUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v4, Ljava/util/List;

    .restart local v4    # "f_unsharedUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 288
    :cond_4
    const-string v9, "shared_folders"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 289
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_sharedFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v5, Ljava/util/List;

    .restart local v5    # "f_sharedFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 291
    :cond_5
    const-string v9, "member_storage_map"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 292
    sget-object v9, Lcom/dropbox/core/v2/team/StorageBucket$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/StorageBucket$Serializer;

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_memberStorageMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/dropbox/core/v2/team/StorageBucket;>;>;"
    check-cast v6, Ljava/util/List;

    .restart local v6    # "f_memberStorageMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/dropbox/core/v2/team/StorageBucket;>;>;"
    goto/16 :goto_0

    .line 295
    :cond_6
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 298
    .end local v7    # "field":Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    .line 299
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"start_date\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 301
    :cond_8
    if-nez v2, :cond_9

    .line 302
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"total_usage\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 304
    :cond_9
    if-nez v3, :cond_a

    .line 305
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"shared_usage\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 307
    :cond_a
    if-nez v4, :cond_b

    .line 308
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"unshared_usage\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 310
    :cond_b
    if-nez v5, :cond_c

    .line 311
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"shared_folders\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 313
    :cond_c
    if-nez v6, :cond_d

    .line 314
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"member_storage_map\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 316
    :cond_d
    new-instance v0, Lcom/dropbox/core/v2/team/GetStorageReport;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/GetStorageReport;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 321
    .local v0, "value":Lcom/dropbox/core/v2/team/GetStorageReport;
    if-nez p2, :cond_e

    .line 322
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 324
    :cond_e
    return-object v0

    .line 319
    .end local v0    # "value":Lcom/dropbox/core/v2/team/GetStorageReport;
    .end local v1    # "f_startDate":Ljava/lang/String;
    .end local v2    # "f_totalUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "f_sharedUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "f_unsharedUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "f_sharedFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "f_memberStorageMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/dropbox/core/v2/team/StorageBucket;>;>;"
    :cond_f
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No subtype found that matches tag: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9
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
    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GetStorageReport;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GetStorageReport;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GetStorageReport;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 238
    if-nez p3, :cond_0

    .line 239
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 241
    :cond_0
    const-string v0, "start_date"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetStorageReport;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 243
    const-string v0, "total_usage"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetStorageReport;->totalUsage:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 245
    const-string v0, "shared_usage"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedUsage:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 247
    const-string v0, "unshared_usage"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetStorageReport;->unsharedUsage:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 249
    const-string v0, "shared_folders"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedFolders:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 251
    const-string v0, "member_storage_map"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/dropbox/core/v2/team/StorageBucket$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/StorageBucket$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetStorageReport;->memberStorageMap:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 253
    if-nez p3, :cond_1

    .line 254
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 256
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
    .line 233
    check-cast p1, Lcom/dropbox/core/v2/team/GetStorageReport;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->serialize(Lcom/dropbox/core/v2/team/GetStorageReport;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
