.class Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ShareFolderError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ShareFolderError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ShareFolderError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ShareFolderError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 335
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 343
    :goto_0
    if-nez v2, :cond_1

    .line 344
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 339
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 340
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 341
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 346
    :cond_1
    const-string v4, "email_unverified"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 347
    sget-object v3, Lcom/dropbox/core/v2/sharing/ShareFolderError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 370
    .local v3, "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    :goto_1
    if-nez v0, :cond_2

    .line 371
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 372
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 374
    :cond_2
    return-object v3

    .line 349
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    :cond_3
    const-string v4, "bad_path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharePathError;
    const-string v4, "bad_path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 352
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v1

    .line 353
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPath(Lcom/dropbox/core/v2/sharing/SharePathError;)Lcom/dropbox/core/v2/sharing/ShareFolderError;

    move-result-object v3

    .line 354
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    goto :goto_1

    .line 355
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharePathError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    :cond_4
    const-string v4, "team_policy_disallows_member_policy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 356
    sget-object v3, Lcom/dropbox/core/v2/sharing/ShareFolderError;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    goto :goto_1

    .line 358
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    :cond_5
    const-string v4, "disallowed_shared_link_policy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 359
    sget-object v3, Lcom/dropbox/core/v2/sharing/ShareFolderError;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    goto :goto_1

    .line 361
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    :cond_6
    const-string v4, "other"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 362
    sget-object v3, Lcom/dropbox/core/v2/sharing/ShareFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    goto :goto_1

    .line 364
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    :cond_7
    const-string v4, "no_permission"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 365
    sget-object v3, Lcom/dropbox/core/v2/sharing/ShareFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    goto :goto_1

    .line 368
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    :cond_8
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ShareFolderError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ShareFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ShareFolderError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 293
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ShareFolderError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->tag()Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->tag()Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :pswitch_0
    const-string v0, "email_unverified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 299
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 300
    const-string v0, "bad_path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 301
    const-string v0, "bad_path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->access$000(Lcom/dropbox/core/v2/sharing/ShareFolderError;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharePathError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 303
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 307
    :pswitch_2
    const-string v0, "team_policy_disallows_member_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :pswitch_3
    const-string v0, "disallowed_shared_link_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :pswitch_4
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :pswitch_5
    const-string v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 288
    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ShareFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
