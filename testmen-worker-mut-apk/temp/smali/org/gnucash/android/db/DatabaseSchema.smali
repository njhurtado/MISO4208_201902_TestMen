.class public Lorg/gnucash/android/db/DatabaseSchema;
.super Ljava/lang/Object;
.source "DatabaseSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/db/DatabaseSchema$RecurrenceEntry;,
        Lorg/gnucash/android/db/DatabaseSchema$BudgetAmountEntry;,
        Lorg/gnucash/android/db/DatabaseSchema$BudgetEntry;,
        Lorg/gnucash/android/db/DatabaseSchema$PriceEntry;,
        Lorg/gnucash/android/db/DatabaseSchema$CommodityEntry;,
        Lorg/gnucash/android/db/DatabaseSchema$ScheduledActionEntry;,
        Lorg/gnucash/android/db/DatabaseSchema$SplitEntry;,
        Lorg/gnucash/android/db/DatabaseSchema$TransactionEntry;,
        Lorg/gnucash/android/db/DatabaseSchema$AccountEntry;,
        Lorg/gnucash/android/db/DatabaseSchema$BookEntry;,
        Lorg/gnucash/android/db/DatabaseSchema$CommonColumns;
    }
.end annotation


# static fields
.field public static final BOOK_DATABASE_NAME:Ljava/lang/String; = "gnucash_books.db"

.field public static final BOOK_DATABASE_VERSION:I = 0x1

.field public static final DATABASE_VERSION:I = 0xf

.field public static final LEGACY_DATABASE_NAME:Ljava/lang/String; = "gnucash_db"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
