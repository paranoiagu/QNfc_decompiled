.class Lcom/android/nfc/NfcService$5;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3416
    iput-object p1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3419
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3420
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3422
    iget-object v1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService$5;->getSendingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v3, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v3, v3, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;Z)V

    .line 3425
    :cond_0
    return-void
.end method
