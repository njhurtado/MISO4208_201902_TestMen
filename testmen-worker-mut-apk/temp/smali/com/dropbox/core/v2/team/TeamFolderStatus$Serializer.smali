.class Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamFolderStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamFolderStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamFolderStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderStatus;
    .locals 5
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
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

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
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 86
    :cond_1
    const-string v3, "active"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderStatus;->ACTIVE:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    .line 98
    .local v2, "value":Lcom/dropbox/core/v2/team/TeamFolderStatus;
    :goto_1
    if-nez v0, :cond_2

    .line 99
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 100
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 102
    :cond_2
    return-object v2

    .line 89
    .end local v2    # "value":Lcom/dropbox/core/v2/team/TeamFolderStatus;
    :cond_3
    const-string v3, "archived"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderStatus;->ARCHIVED:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/TeamFolderStatus;
    goto :goto_1

    .line 92
    .end local v2    # "value":Lcom/dropbox/core/v2/team/TeamFolderStatus;
    :cond_4
    const-string v3, "archive_in_progress"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderStatus;->ARCHIVE_IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/TeamFolderStatus;
    goto :goto_1

    .line 96
    .end local v2    # "value":Lcom/dropbox/core/v2/team/TeamFolderStatus;
    :cond_5
    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderStatus;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/TeamFolderStatus;
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
    .line 44
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamFolderStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamFolderStatus;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderStatus$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderStatus:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 63
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 51
    :pswitch_0
    const-string v0, "active"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_1
    const-string v0, "archived"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_2
    const-string v0, "archive_in_progress"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
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
    .line 44
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderStatus$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
