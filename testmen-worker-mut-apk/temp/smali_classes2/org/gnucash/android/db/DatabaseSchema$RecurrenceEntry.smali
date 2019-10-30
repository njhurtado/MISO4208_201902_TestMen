.class public abstract Lorg/gnucash/android/db/DatabaseSchema$RecurrenceEntry;
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
    name = "RecurrenceEntry"
.end annotation


# static fields
.field public static final COLUMN_BYDAY:Ljava/lang/String; = "recurrence_byday"

.field public static final COLUMN_MULTIPLIER:Ljava/lang/String; = "recurrence_mult"

.field public static final COLUMN_PERIOD_END:Ljava/lang/String; = "recurrence_period_end"

.field public static final COLUMN_PERIOD_START:Ljava/lang/String; = "recurrence_period_start"

.field public static final COLUMN_PERIOD_TYPE:Ljava/lang/String; = "recurrence_period_type"

.field public static final INDEX_UID:Ljava/lang/String; = "recurrence_uid_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "recurrences"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
