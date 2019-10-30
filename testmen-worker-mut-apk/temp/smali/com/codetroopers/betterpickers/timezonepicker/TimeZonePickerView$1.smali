.class Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$1;
.super Ljava/lang/Object;
.source "TimeZonePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;JLcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$1;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$1;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->access$000(Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 97
    return-void
.end method
