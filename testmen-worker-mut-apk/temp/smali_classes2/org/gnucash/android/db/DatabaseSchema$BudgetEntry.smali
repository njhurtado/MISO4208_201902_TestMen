.class public abstract Lorg/gnucash/android/db/DatabaseSchema$BudgetEntry;
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
    name = "BudgetEntry"
.end annotation


# static fields
.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NUM_PERIODS:Ljava/lang/String; = "num_periods"

.field public static final COLUMN_RECURRENCE_UID:Ljava/lang/String; = "recurrence_uid"

.field public static final INDEX_UID:Ljava/lang/String; = "budgets_uid_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "budgets"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
