.class Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MembersRemoveArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersRemoveArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersRemoveArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MembersRemoveArg;
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
    .line 327
    const/4 v9, 0x0

    .line 328
    .local v9, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 330
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v9

    .line 332
    :cond_0
    if-nez v9, :cond_9

    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, "f_user":Lcom/dropbox/core/v2/team/UserSelectorArg;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 335
    .local v7, "f_wipeData":Ljava/lang/Boolean;
    const/4 v3, 0x0

    .line 336
    .local v3, "f_transferDestId":Lcom/dropbox/core/v2/team/UserSelectorArg;
    const/4 v4, 0x0

    .line 337
    .local v4, "f_transferAdminId":Lcom/dropbox/core/v2/team/UserSelectorArg;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 338
    .local v6, "f_keepAccount":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v5, :cond_6

    .line 339
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 341
    const-string v2, "user"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    sget-object v2, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v1

    goto :goto_0

    .line 344
    :cond_1
    const-string v2, "wipe_data"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_wipeData":Ljava/lang/Boolean;
    check-cast v7, Ljava/lang/Boolean;

    .restart local v7    # "f_wipeData":Ljava/lang/Boolean;
    goto :goto_0

    .line 347
    :cond_2
    const-string v2, "transfer_dest_id"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    sget-object v2, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_transferDestId":Lcom/dropbox/core/v2/team/UserSelectorArg;
    check-cast v3, Lcom/dropbox/core/v2/team/UserSelectorArg;

    .restart local v3    # "f_transferDestId":Lcom/dropbox/core/v2/team/UserSelectorArg;
    goto :goto_0

    .line 350
    :cond_3
    const-string v2, "transfer_admin_id"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 351
    sget-object v2, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_transferAdminId":Lcom/dropbox/core/v2/team/UserSelectorArg;
    check-cast v4, Lcom/dropbox/core/v2/team/UserSelectorArg;

    .restart local v4    # "f_transferAdminId":Lcom/dropbox/core/v2/team/UserSelectorArg;
    goto :goto_0

    .line 353
    :cond_4
    const-string v2, "keep_account"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_keepAccount":Ljava/lang/Boolean;
    check-cast v6, Ljava/lang/Boolean;

    .restart local v6    # "f_keepAccount":Ljava/lang/Boolean;
    goto :goto_0

    .line 357
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 360
    .end local v8    # "field":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    .line 361
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"user\" missing."

    invoke-direct {v2, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v2

    .line 363
    :cond_7
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveArg;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/MembersRemoveArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;ZLcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V

    .line 368
    .local v0, "value":Lcom/dropbox/core/v2/team/MembersRemoveArg;
    if-nez p2, :cond_8

    .line 369
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 371
    :cond_8
    return-object v0

    .line 366
    .end local v0    # "value":Lcom/dropbox/core/v2/team/MembersRemoveArg;
    .end local v1    # "f_user":Lcom/dropbox/core/v2/team/UserSelectorArg;
    .end local v3    # "f_transferDestId":Lcom/dropbox/core/v2/team/UserSelectorArg;
    .end local v4    # "f_transferAdminId":Lcom/dropbox/core/v2/team/UserSelectorArg;
    .end local v6    # "f_keepAccount":Ljava/lang/Boolean;
    .end local v7    # "f_wipeData":Ljava/lang/Boolean;
    :cond_9
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No subtype found that matches tag: \""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

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
    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MembersRemoveArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersRemoveArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MembersRemoveArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 302
    if-nez p3, :cond_0

    .line 303
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 305
    :cond_0
    const-string v0, "user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 307
    const-string v0, "wipe_data"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->wipeData:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 309
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz v0, :cond_1

    .line 310
    const-string v0, "transfer_dest_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 313
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz v0, :cond_2

    .line 314
    const-string v0, "transfer_admin_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 317
    :cond_2
    const-string v0, "keep_account"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->keepAccount:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 319
    if-nez p3, :cond_3

    .line 320
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 322
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
    .line 297
    check-cast p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersRemoveArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
