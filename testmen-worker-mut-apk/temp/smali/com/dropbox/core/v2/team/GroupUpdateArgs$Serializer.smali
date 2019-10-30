.class Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GroupUpdateArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupUpdateArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupUpdateArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GroupUpdateArgs;
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
    .line 318
    const/4 v8, 0x0

    .line 319
    .local v8, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 320
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 321
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v8

    .line 323
    :cond_0
    if-nez v8, :cond_9

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "f_group":Lcom/dropbox/core/v2/team/GroupSelector;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 326
    .local v6, "f_returnMembers":Ljava/lang/Boolean;
    const/4 v3, 0x0

    .line 327
    .local v3, "f_newGroupName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 328
    .local v4, "f_newGroupExternalId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 329
    .local v5, "f_newGroupManagementType":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v9, :cond_6

    .line 330
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 332
    const-string v2, "group"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    sget-object v2, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupSelector;

    move-result-object v1

    goto :goto_0

    .line 335
    :cond_1
    const-string v2, "return_members"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_returnMembers":Ljava/lang/Boolean;
    check-cast v6, Ljava/lang/Boolean;

    .restart local v6    # "f_returnMembers":Ljava/lang/Boolean;
    goto :goto_0

    .line 338
    :cond_2
    const-string v2, "new_group_name"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 339
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_newGroupName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_newGroupName":Ljava/lang/String;
    goto :goto_0

    .line 341
    :cond_3
    const-string v2, "new_group_external_id"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 342
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_newGroupExternalId":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_newGroupExternalId":Ljava/lang/String;
    goto :goto_0

    .line 344
    :cond_4
    const-string v2, "new_group_management_type"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 345
    sget-object v2, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_newGroupManagementType":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    check-cast v5, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .restart local v5    # "f_newGroupManagementType":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    goto :goto_0

    .line 348
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 351
    .end local v7    # "field":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    .line 352
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"group\" missing."

    invoke-direct {v2, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v2

    .line 354
    :cond_7
    new-instance v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/GroupUpdateArgs;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;ZLjava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    .line 359
    .local v0, "value":Lcom/dropbox/core/v2/team/GroupUpdateArgs;
    if-nez p2, :cond_8

    .line 360
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 362
    :cond_8
    return-object v0

    .line 357
    .end local v0    # "value":Lcom/dropbox/core/v2/team/GroupUpdateArgs;
    .end local v1    # "f_group":Lcom/dropbox/core/v2/team/GroupSelector;
    .end local v3    # "f_newGroupName":Ljava/lang/String;
    .end local v4    # "f_newGroupExternalId":Ljava/lang/String;
    .end local v5    # "f_newGroupManagementType":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .end local v6    # "f_returnMembers":Ljava/lang/Boolean;
    :cond_9
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No subtype found that matches tag: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v2
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
    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GroupUpdateArgs;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupUpdateArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GroupUpdateArgs;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 291
    if-nez p3, :cond_0

    .line 292
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 294
    :cond_0
    const-string v0, "group"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 296
    const-string v0, "return_members"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->returnMembers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 298
    iget-object v0, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 299
    const-string v0, "new_group_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 302
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 303
    const-string v0, "new_group_external_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 306
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eqz v0, :cond_3

    .line 307
    const-string v0, "new_group_management_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 310
    :cond_3
    if-nez p3, :cond_4

    .line 311
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 313
    :cond_4
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
    .line 286
    check-cast p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupUpdateArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
