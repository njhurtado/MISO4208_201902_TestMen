.class public final enum Lcom/owncloud/android/lib/resources/shares/ShareType;
.super Ljava/lang/Enum;
.source "ShareType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/owncloud/android/lib/resources/shares/ShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/owncloud/android/lib/resources/shares/ShareType;

.field public static final enum CONTACT:Lcom/owncloud/android/lib/resources/shares/ShareType;

.field public static final enum EMAIL:Lcom/owncloud/android/lib/resources/shares/ShareType;

.field public static final enum FEDERATED:Lcom/owncloud/android/lib/resources/shares/ShareType;

.field public static final enum GROUP:Lcom/owncloud/android/lib/resources/shares/ShareType;

.field public static final enum NO_SHARED:Lcom/owncloud/android/lib/resources/shares/ShareType;

.field public static final enum PUBLIC_LINK:Lcom/owncloud/android/lib/resources/shares/ShareType;

.field public static final enum USER:Lcom/owncloud/android/lib/resources/shares/ShareType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Lcom/owncloud/android/lib/resources/shares/ShareType;

    const-string v1, "NO_SHARED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/owncloud/android/lib/resources/shares/ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->NO_SHARED:Lcom/owncloud/android/lib/resources/shares/ShareType;

    .line 43
    new-instance v0, Lcom/owncloud/android/lib/resources/shares/ShareType;

    const-string v1, "USER"

    invoke-direct {v0, v1, v5, v4}, Lcom/owncloud/android/lib/resources/shares/ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->USER:Lcom/owncloud/android/lib/resources/shares/ShareType;

    .line 44
    new-instance v0, Lcom/owncloud/android/lib/resources/shares/ShareType;

    const-string v1, "GROUP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v5}, Lcom/owncloud/android/lib/resources/shares/ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->GROUP:Lcom/owncloud/android/lib/resources/shares/ShareType;

    .line 45
    new-instance v0, Lcom/owncloud/android/lib/resources/shares/ShareType;

    const-string v1, "PUBLIC_LINK"

    invoke-direct {v0, v1, v6, v6}, Lcom/owncloud/android/lib/resources/shares/ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->PUBLIC_LINK:Lcom/owncloud/android/lib/resources/shares/ShareType;

    .line 46
    new-instance v0, Lcom/owncloud/android/lib/resources/shares/ShareType;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v7, v7}, Lcom/owncloud/android/lib/resources/shares/ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->EMAIL:Lcom/owncloud/android/lib/resources/shares/ShareType;

    .line 47
    new-instance v0, Lcom/owncloud/android/lib/resources/shares/ShareType;

    const-string v1, "CONTACT"

    invoke-direct {v0, v1, v8, v8}, Lcom/owncloud/android/lib/resources/shares/ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->CONTACT:Lcom/owncloud/android/lib/resources/shares/ShareType;

    .line 48
    new-instance v0, Lcom/owncloud/android/lib/resources/shares/ShareType;

    const-string v1, "FEDERATED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/owncloud/android/lib/resources/shares/ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->FEDERATED:Lcom/owncloud/android/lib/resources/shares/ShareType;

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/owncloud/android/lib/resources/shares/ShareType;

    sget-object v1, Lcom/owncloud/android/lib/resources/shares/ShareType;->NO_SHARED:Lcom/owncloud/android/lib/resources/shares/ShareType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/owncloud/android/lib/resources/shares/ShareType;->USER:Lcom/owncloud/android/lib/resources/shares/ShareType;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/owncloud/android/lib/resources/shares/ShareType;->GROUP:Lcom/owncloud/android/lib/resources/shares/ShareType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/owncloud/android/lib/resources/shares/ShareType;->PUBLIC_LINK:Lcom/owncloud/android/lib/resources/shares/ShareType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/owncloud/android/lib/resources/shares/ShareType;->EMAIL:Lcom/owncloud/android/lib/resources/shares/ShareType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/owncloud/android/lib/resources/shares/ShareType;->CONTACT:Lcom/owncloud/android/lib/resources/shares/ShareType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/owncloud/android/lib/resources/shares/ShareType;->FEDERATED:Lcom/owncloud/android/lib/resources/shares/ShareType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->$VALUES:[Lcom/owncloud/android/lib/resources/shares/ShareType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/owncloud/android/lib/resources/shares/ShareType;->value:I

    .line 55
    return-void
.end method

.method public static fromValue(I)Lcom/owncloud/android/lib/resources/shares/ShareType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 63
    packed-switch p0, :pswitch_data_0

    .line 80
    :pswitch_0
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->NO_SHARED:Lcom/owncloud/android/lib/resources/shares/ShareType;

    :goto_0
    return-object v0

    .line 66
    :pswitch_1
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->NO_SHARED:Lcom/owncloud/android/lib/resources/shares/ShareType;

    goto :goto_0

    .line 68
    :pswitch_2
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->USER:Lcom/owncloud/android/lib/resources/shares/ShareType;

    goto :goto_0

    .line 70
    :pswitch_3
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->GROUP:Lcom/owncloud/android/lib/resources/shares/ShareType;

    goto :goto_0

    .line 72
    :pswitch_4
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->PUBLIC_LINK:Lcom/owncloud/android/lib/resources/shares/ShareType;

    goto :goto_0

    .line 74
    :pswitch_5
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->EMAIL:Lcom/owncloud/android/lib/resources/shares/ShareType;

    goto :goto_0

    .line 76
    :pswitch_6
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->CONTACT:Lcom/owncloud/android/lib/resources/shares/ShareType;

    goto :goto_0

    .line 78
    :pswitch_7
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->FEDERATED:Lcom/owncloud/android/lib/resources/shares/ShareType;

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/owncloud/android/lib/resources/shares/ShareType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/owncloud/android/lib/resources/shares/ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/owncloud/android/lib/resources/shares/ShareType;

    return-object v0
.end method

.method public static values()[Lcom/owncloud/android/lib/resources/shares/ShareType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->$VALUES:[Lcom/owncloud/android/lib/resources/shares/ShareType;

    invoke-virtual {v0}, [Lcom/owncloud/android/lib/resources/shares/ShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/owncloud/android/lib/resources/shares/ShareType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/ShareType;->value:I

    return v0
.end method
