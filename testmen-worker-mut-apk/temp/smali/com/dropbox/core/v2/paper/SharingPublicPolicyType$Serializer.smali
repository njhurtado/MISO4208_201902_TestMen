.class Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharingPublicPolicyType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 83
    :goto_0
    if-nez v1, :cond_1

    .line 84
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 79
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 80
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 86
    :cond_1
    const-string v3, "people_with_link_can_edit"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    sget-object v2, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->PEOPLE_WITH_LINK_CAN_EDIT:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .line 101
    .local v2, "value":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    :goto_1
    if-nez v0, :cond_2

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 103
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 105
    :cond_2
    return-object v2

    .line 89
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    :cond_3
    const-string v3, "people_with_link_can_view_and_comment"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    sget-object v2, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    goto :goto_1

    .line 92
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    :cond_4
    const-string v3, "invite_only"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    sget-object v2, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->INVITE_ONLY:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    goto :goto_1

    .line 95
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    :cond_5
    const-string v3, "disabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 96
    sget-object v2, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->DISABLED:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    goto :goto_1

    .line 99
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    :cond_6
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3
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
    .line 40
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$1;->$SwitchMap$com$dropbox$core$v2$paper$SharingPublicPolicyType:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    const-string v0, "people_with_link_can_edit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 51
    :pswitch_1
    const-string v0, "people_with_link_can_view_and_comment"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_2
    const-string v0, "invite_only"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_3
    const-string v0, "disabled"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 40
    check-cast p1, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->serialize(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
