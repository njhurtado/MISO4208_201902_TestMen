.class Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharePathError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharePathError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharePathError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 526
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharePathError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 604
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 605
    const/4 v0, 0x1

    .line 606
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 614
    :goto_0
    if-nez v2, :cond_1

    .line 615
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 610
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 611
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 612
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 617
    :cond_1
    const-string v4, "is_file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 618
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 666
    .local v3, "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :goto_1
    if-nez v0, :cond_2

    .line 667
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 668
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 670
    :cond_2
    return-object v3

    .line 620
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_3
    const-string v4, "inside_shared_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 621
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto :goto_1

    .line 623
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_4
    const-string v4, "contains_shared_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 624
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto :goto_1

    .line 626
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_5
    const-string v4, "contains_app_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 627
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto :goto_1

    .line 629
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_6
    const-string v4, "contains_team_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 630
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto :goto_1

    .line 632
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_7
    const-string v4, "is_app_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 633
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto :goto_1

    .line 635
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_8
    const-string v4, "inside_app_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 636
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto :goto_1

    .line 638
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_9
    const-string v4, "is_public_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 639
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto :goto_1

    .line 641
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_a
    const-string v4, "inside_public_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 642
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto :goto_1

    .line 644
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_b
    const-string v4, "already_shared"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 645
    const/4 v1, 0x0

    .line 646
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    invoke-virtual {v4, p1, v6}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v1

    .line 647
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadyShared(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v3

    .line 648
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto :goto_1

    .line 649
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_c
    const-string v4, "invalid_path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 650
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto :goto_1

    .line 652
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_d
    const-string v4, "is_osx_package"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 653
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto/16 :goto_1

    .line 655
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_e
    const-string v4, "inside_osx_package"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 656
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto/16 :goto_1

    .line 658
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_f
    const-string v4, "invalid_path_root"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 659
    const/4 v1, 0x0

    .line 660
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/PathRootError;
    sget-object v4, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PathRootError$Serializer;

    invoke-virtual {v4, p1, v6}, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/PathRootError;

    move-result-object v1

    .line 661
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/SharePathError;->invalidPathRoot(Lcom/dropbox/core/v2/files/PathRootError;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v3

    .line 662
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    goto/16 :goto_1

    .line 664
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/PathRootError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_10
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError;->OTHER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/SharePathError;
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
    .line 525
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharePathError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharePathError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/SharePathError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 530
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharePathError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/SharePathError;->tag()Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 594
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 597
    :goto_0
    return-void

    .line 532
    :pswitch_0
    const-string v0, "is_file"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :pswitch_1
    const-string v0, "inside_shared_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :pswitch_2
    const-string v0, "contains_shared_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :pswitch_3
    const-string v0, "contains_app_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :pswitch_4
    const-string v0, "contains_team_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :pswitch_5
    const-string v0, "is_app_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :pswitch_6
    const-string v0, "inside_app_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :pswitch_7
    const-string v0, "is_public_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :pswitch_8
    const-string v0, "inside_public_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 569
    const-string v0, "already_shared"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 570
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharePathError;->access$000(Lcom/dropbox/core/v2/sharing/SharePathError;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 571
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 575
    :pswitch_a
    const-string v0, "invalid_path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :pswitch_b
    const-string v0, "is_osx_package"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :pswitch_c
    const-string v0, "inside_osx_package"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :pswitch_d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 588
    const-string v0, "invalid_path_root"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 589
    sget-object v0, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PathRootError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharePathError;->access$100(Lcom/dropbox/core/v2/sharing/SharePathError;)Lcom/dropbox/core/v2/files/PathRootError;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->serialize(Lcom/dropbox/core/v2/files/PathRootError;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 590
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 530
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
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
    .line 525
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharePathError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
