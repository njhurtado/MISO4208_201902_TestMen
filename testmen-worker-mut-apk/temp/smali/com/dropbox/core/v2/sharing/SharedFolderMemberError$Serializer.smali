.class Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharedFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 284
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 292
    :goto_0
    if-nez v2, :cond_1

    .line 293
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 288
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 289
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 290
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 295
    :cond_1
    const-string v4, "invalid_dropbox_id"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 296
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 309
    .local v3, "value":Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    :goto_1
    if-nez v0, :cond_2

    .line 310
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 313
    :cond_2
    return-object v3

    .line 298
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    :cond_3
    const-string v4, "not_a_member"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 299
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    goto :goto_1

    .line 301
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    :cond_4
    const-string v4, "no_explicit_access"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    sget-object v4, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    .line 304
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v3

    .line 305
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    goto :goto_1

    .line 307
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    :cond_5
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    goto :goto_1
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
    .line 250
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 255
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharedFolderMemberError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->tag()Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 257
    :pswitch_0
    const-string v0, "invalid_dropbox_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :pswitch_1
    const-string v0, "not_a_member"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 266
    const-string v0, "no_explicit_access"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 267
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->access$000(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 268
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 250
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
