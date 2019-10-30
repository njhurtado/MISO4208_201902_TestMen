.class public Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GroupSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamcommon/GroupSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamcommon/GroupSummary;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamcommon/GroupSummary;
    .locals 11
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v7, 0x0

    .line 289
    .local v7, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 290
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 291
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v7

    .line 293
    :cond_0
    if-nez v7, :cond_b

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "f_groupName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 296
    .local v2, "f_groupId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 297
    .local v3, "f_groupManagementType":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    const/4 v4, 0x0

    .line 298
    .local v4, "f_groupExternalId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 299
    .local v5, "f_memberCount":Ljava/lang/Long;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v9, :cond_6

    .line 300
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 302
    const-string v8, "group_name"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 303
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_groupName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_groupName":Ljava/lang/String;
    goto :goto_0

    .line 305
    :cond_1
    const-string v8, "group_id"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 306
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_groupId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_groupId":Ljava/lang/String;
    goto :goto_0

    .line 308
    :cond_2
    const-string v8, "group_management_type"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 309
    sget-object v8, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    invoke-virtual {v8, p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    move-result-object v3

    goto :goto_0

    .line 311
    :cond_3
    const-string v8, "group_external_id"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 312
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_groupExternalId":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_groupExternalId":Ljava/lang/String;
    goto :goto_0

    .line 314
    :cond_4
    const-string v8, "member_count"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 315
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_memberCount":Ljava/lang/Long;
    check-cast v5, Ljava/lang/Long;

    .restart local v5    # "f_memberCount":Ljava/lang/Long;
    goto :goto_0

    .line 318
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 321
    .end local v6    # "field":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    .line 322
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"group_name\" missing."

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 324
    :cond_7
    if-nez v2, :cond_8

    .line 325
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"group_id\" missing."

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 327
    :cond_8
    if-nez v3, :cond_9

    .line 328
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"group_management_type\" missing."

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 330
    :cond_9
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamcommon/GroupSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    .local v0, "value":Lcom/dropbox/core/v2/teamcommon/GroupSummary;
    if-nez p2, :cond_a

    .line 336
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 338
    :cond_a
    return-object v0

    .line 333
    .end local v0    # "value":Lcom/dropbox/core/v2/teamcommon/GroupSummary;
    .end local v1    # "f_groupName":Ljava/lang/String;
    .end local v2    # "f_groupId":Ljava/lang/String;
    .end local v3    # "f_groupManagementType":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .end local v4    # "f_groupExternalId":Ljava/lang/String;
    .end local v5    # "f_memberCount":Ljava/lang/Long;
    :cond_b
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No subtype found that matches tag: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8
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
    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamcommon/GroupSummary;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamcommon/GroupSummary;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/teamcommon/GroupSummary;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 263
    if-nez p3, :cond_0

    .line 264
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 266
    :cond_0
    const-string v0, "group_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 268
    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 270
    const-string v0, "group_management_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->serialize(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 272
    iget-object v0, p1, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupExternalId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 273
    const-string v0, "group_external_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupExternalId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 276
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->memberCount:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 277
    const-string v0, "member_count"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->memberCount:Ljava/lang/Long;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 280
    :cond_2
    if-nez p3, :cond_3

    .line 281
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 283
    :cond_3
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
    .line 258
    check-cast p1, Lcom/dropbox/core/v2/teamcommon/GroupSummary;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;->serialize(Lcom/dropbox/core/v2/teamcommon/GroupSummary;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
