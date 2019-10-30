.class Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AddFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/AddFolderMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 534
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 611
    const/4 v0, 0x1

    .line 612
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 620
    :goto_0
    if-nez v2, :cond_1

    .line 621
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 616
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 617
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 618
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 623
    :cond_1
    const-string v4, "access_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 624
    const/4 v1, 0x0

    .line 625
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    const-string v4, "access_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 626
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    .line 627
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v3

    .line 671
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :goto_1
    if-nez v0, :cond_2

    .line 672
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 673
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 675
    :cond_2
    return-object v3

    .line 629
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_3
    const-string v4, "email_unverified"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 630
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    goto :goto_1

    .line 632
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_4
    const-string v4, "bad_member"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 633
    const/4 v1, 0x0

    .line 634
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    const-string v4, "bad_member"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 635
    sget-object v4, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v1

    .line 636
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->badMember(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v3

    .line 637
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    goto :goto_1

    .line 638
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_5
    const-string v4, "cant_share_outside_team"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 639
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    goto :goto_1

    .line 641
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_6
    const-string v4, "too_many_members"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 642
    const/4 v1, 0x0

    .line 643
    .local v1, "fieldValue":Ljava/lang/Long;
    const-string v4, "too_many_members"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 644
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/Long;
    check-cast v1, Ljava/lang/Long;

    .line 645
    .restart local v1    # "fieldValue":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyMembers(J)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v3

    .line 646
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    goto :goto_1

    .line 647
    .end local v1    # "fieldValue":Ljava/lang/Long;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_7
    const-string v4, "too_many_pending_invites"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 648
    const/4 v1, 0x0

    .line 649
    .restart local v1    # "fieldValue":Ljava/lang/Long;
    const-string v4, "too_many_pending_invites"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 650
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/Long;
    check-cast v1, Ljava/lang/Long;

    .line 651
    .restart local v1    # "fieldValue":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyPendingInvites(J)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v3

    .line 652
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    goto :goto_1

    .line 653
    .end local v1    # "fieldValue":Ljava/lang/Long;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_8
    const-string v4, "rate_limit"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 654
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    goto/16 :goto_1

    .line 656
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_9
    const-string v4, "too_many_invitees"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 657
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    goto/16 :goto_1

    .line 659
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_a
    const-string v4, "insufficient_plan"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 660
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    goto/16 :goto_1

    .line 662
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_b
    const-string v4, "team_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 663
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    goto/16 :goto_1

    .line 665
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_c
    const-string v4, "no_permission"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 666
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    goto/16 :goto_1

    .line 669
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_d
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    goto/16 :goto_1
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
    .line 533
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 538
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$AddFolderMemberError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tag()Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 600
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 603
    :goto_0
    return-void

    .line 540
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 541
    const-string v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 542
    const-string v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 543
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->access$000(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 544
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 548
    :pswitch_1
    const-string v0, "email_unverified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 553
    const-string v0, "bad_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 554
    const-string v0, "bad_member"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 555
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->access$100(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 556
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 560
    :pswitch_3
    const-string v0, "cant_share_outside_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 565
    const-string v0, "too_many_members"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 566
    const-string v0, "too_many_members"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->access$200(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 568
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 572
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 573
    const-string v0, "too_many_pending_invites"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 574
    const-string v0, "too_many_pending_invites"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->access$300(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 576
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 580
    :pswitch_6
    const-string v0, "rate_limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :pswitch_7
    const-string v0, "too_many_invitees"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    :pswitch_8
    const-string v0, "insufficient_plan"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    :pswitch_9
    const-string v0, "team_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    :pswitch_a
    const-string v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
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
    .line 533
    check-cast p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
