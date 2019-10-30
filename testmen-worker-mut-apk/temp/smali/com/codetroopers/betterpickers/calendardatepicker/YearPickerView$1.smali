.class Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$1;
.super Ljava/lang/Object;
.source "YearPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->postSetSelectionFromTop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

.field final synthetic val$offset:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    iput p2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$1;->val$position:I

    iput p3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$1;->val$position:I

    iget v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$1;->val$offset:I

    invoke-virtual {v0, v1, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->setSelectionFromTop(II)V

    .line 156
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->requestLayout()V

    .line 157
    return-void
.end method
