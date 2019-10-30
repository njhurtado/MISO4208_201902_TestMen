.class public final enum Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;
.super Ljava/lang/Enum;
.source "SearchOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owncloud/android/lib/resources/files/SearchOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

.field public static final enum CONTENT_TYPE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

.field public static final enum FAVORITE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

.field public static final enum FILE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

.field public static final enum RECENTLY_ADDED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

.field public static final enum RECENTLY_MODIFIED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

.field public static final enum SHARED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    const-string v1, "FILE_SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->FILE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    .line 60
    new-instance v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    const-string v1, "FAVORITE_SEARCH"

    invoke-direct {v0, v1, v4}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->FAVORITE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    .line 61
    new-instance v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    const-string v1, "CONTENT_TYPE_SEARCH"

    invoke-direct {v0, v1, v5}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->CONTENT_TYPE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    .line 62
    new-instance v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    const-string v1, "RECENTLY_MODIFIED_SEARCH"

    invoke-direct {v0, v1, v6}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->RECENTLY_MODIFIED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    .line 63
    new-instance v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    const-string v1, "RECENTLY_ADDED_SEARCH"

    invoke-direct {v0, v1, v7}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->RECENTLY_ADDED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    .line 64
    new-instance v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    const-string v1, "SHARED_SEARCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->SHARED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    sget-object v1, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->FILE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->FAVORITE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->CONTENT_TYPE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->RECENTLY_MODIFIED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->RECENTLY_ADDED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->SHARED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->$VALUES:[Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    return-object v0
.end method

.method public static values()[Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->$VALUES:[Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    invoke-virtual {v0}, [Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    return-object v0
.end method
