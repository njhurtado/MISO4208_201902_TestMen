.class Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "InviteeMembershipInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
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
    .line 314
    const/4 v9, 0x0

    .line 315
    .local v9, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 316
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 317
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v9

    .line 319
    :cond_0
    if-nez v9, :cond_b

    .line 320
    const/4 v1, 0x0

    .line 321
    .local v1, "f_accessType":Lcom/dropbox/core/v2/sharing/AccessLevel;
    const/4 v2, 0x0

    .line 322
    .local v2, "f_invitee":Lcom/dropbox/core/v2/sharing/InviteeInfo;
    const/4 v3, 0x0

    .line 323
    .local v3, "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    const/4 v4, 0x0

    .line 324
    .local v4, "f_initials":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 325
    .local v7, "f_isInherited":Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 326
    .local v6, "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v10, :cond_7

    .line 327
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 329
    const-string v5, "access_type"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 330
    sget-object v5, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v1

    goto :goto_0

    .line 332
    :cond_1
    const-string v5, "invitee"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 333
    sget-object v5, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/InviteeInfo;

    move-result-object v2

    goto :goto_0

    .line 335
    :cond_2
    const-string v5, "permissions"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 336
    sget-object v5, Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    goto :goto_0

    .line 338
    :cond_3
    const-string v5, "initials"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 339
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_initials":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_initials":Ljava/lang/String;
    goto :goto_0

    .line 341
    :cond_4
    const-string v5, "is_inherited"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 342
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_isInherited":Ljava/lang/Boolean;
    check-cast v7, Ljava/lang/Boolean;

    .restart local v7    # "f_isInherited":Ljava/lang/Boolean;
    goto :goto_0

    .line 344
    :cond_5
    const-string v5, "user"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 345
    sget-object v5, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    check-cast v6, Lcom/dropbox/core/v2/sharing/UserInfo;

    .restart local v6    # "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    goto/16 :goto_0

    .line 348
    :cond_6
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 351
    .end local v8    # "field":Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    .line 352
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"access_type\" missing."

    invoke-direct {v5, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 354
    :cond_8
    if-nez v2, :cond_9

    .line 355
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"invitee\" missing."

    invoke-direct {v5, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 357
    :cond_9
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;Ljava/util/List;Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/UserInfo;)V

    .line 362
    .local v0, "value":Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
    if-nez p2, :cond_a

    .line 363
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 365
    :cond_a
    return-object v0

    .line 360
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
    .end local v1    # "f_accessType":Lcom/dropbox/core/v2/sharing/AccessLevel;
    .end local v2    # "f_invitee":Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .end local v3    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    .end local v4    # "f_initials":Ljava/lang/String;
    .end local v6    # "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    .end local v7    # "f_isInherited":Ljava/lang/Boolean;
    :cond_b
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No subtype found that matches tag: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

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
    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 285
    if-nez p3, :cond_0

    .line 286
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 288
    :cond_0
    const-string v0, "access_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 290
    const-string v0, "invitee"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/InviteeInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 292
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 293
    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 296
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 297
    const-string v0, "initials"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 300
    :cond_2
    const-string v0, "is_inherited"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->isInherited:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 302
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    if-eqz v0, :cond_3

    .line 303
    const-string v0, "user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 306
    :cond_3
    if-nez p3, :cond_4

    .line 307
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 309
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
    .line 280
    check-cast p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
