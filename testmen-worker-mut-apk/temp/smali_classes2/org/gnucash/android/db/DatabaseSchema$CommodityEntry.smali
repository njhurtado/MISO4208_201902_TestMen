.class public abstract Lorg/gnucash/android/db/DatabaseSchema$CommodityEntry;
.super Ljava/lang/Object;
.source "DatabaseSchema.java"

# interfaces
.implements Lorg/gnucash/android/db/DatabaseSchema$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/db/DatabaseSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CommodityEntry"
.end annotation


# static fields
.field public static final COLUMN_CUSIP:Ljava/lang/String; = "cusip"

.field public static final COLUMN_FULLNAME:Ljava/lang/String; = "fullname"

.field public static final COLUMN_LOCAL_SYMBOL:Ljava/lang/String; = "local_symbol"

.field public static final COLUMN_MNEMONIC:Ljava/lang/String; = "mnemonic"

.field public static final COLUMN_NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final COLUMN_QUOTE_FLAG:Ljava/lang/String; = "quote_flag"

.field public static final COLUMN_SMALLEST_FRACTION:Ljava/lang/String; = "fraction"

.field public static final INDEX_UID:Ljava/lang/String; = "commodities_uid_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "commodities"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
