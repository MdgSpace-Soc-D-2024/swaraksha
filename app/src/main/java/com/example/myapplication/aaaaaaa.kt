import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ColorFilter
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.em
import androidx.compose.ui.unit.sp
import com.example.yourapp.R

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            HOMEPAGE()
        }
    }
}

@Composable
fun HOMEPAGE(modifier: Modifier = Modifier) {
    Box(
        modifier = modifier
            .requiredWidth(width = 412.dp)
            .requiredHeight(height = 917.dp)
            .clip(shape = RoundedCornerShape(30.dp))
            .background(color = Color(0xfffceff0))
    ) {
        Image(
            painter = painterResource(id = R.drawable.rectangle4),
            contentDescription = "Rectangle 4",
            modifier = Modifier
                .align(alignment = Alignment.TopStart)
                .offset(x = 0.dp, y = 822.dp)
                .requiredWidth(width = 412.dp)
                .requiredHeight(height = 95.dp)
        )
        Faq(
            modifier = Modifier
                .align(alignment = Alignment.TopStart)
                .offset(x = 56.dp, y = 852.dp)
        )
        RIDEMODE(
            modifier = Modifier
                .align(alignment = Alignment.TopStart)
                .offset(x = 124.dp, y = 353.dp)
        )
        EMERGENCY(
            modifier = Modifier
                .align(alignment = Alignment.TopStart)
                .offset(x = 43.dp, y = 440.dp)
        )
        SAFETYLESSONS(
            modifier = Modifier
                .align(alignment = Alignment.TopStart)
                .offset(x = 71.dp, y = 558.dp)
        )
        Feedback(
            modifier = Modifier
                .align(alignment = Alignment.TopStart)
                .offset(x = 185.dp, y = 840.dp)
        )
        Image(
            painter = painterResource(id = R.drawable.image1),
            contentDescription = "IMAGE 1",
            modifier = Modifier
                .align(alignment = Alignment.TopStart)
                .offset(x = 206.dp, y = 40.dp)
                .requiredWidth(width = 234.dp)
                .requiredHeight(height = 215.dp)
        )
        Text(
            text = "Swaraksha",
            color = Color.Black.copy(alpha = 0.5f),
            textAlign = TextAlign.Center,
            lineHeight = 0.7.em,
            style = TextStyle(fontSize = 50.sp),
            modifier = Modifier
                .align(alignment = Alignment.TopStart)
                .offset(x = (-55).dp, y = 131.dp)
                .requiredWidth(width = 396.dp)
                .requiredHeight(height = 96.dp)
                .border(border = BorderStroke(1.dp, Color.Black))
                .wrapContentHeight(align = Alignment.CenterVertically)
        )
    }
}

@Composable
fun Faq(modifier: Modifier = Modifier) {
    Box(
        modifier = modifier
            .requiredWidth(width = 91.dp)
            .requiredHeight(height = 35.dp)
    ) {
        Image(
            painter = painterResource(id = R.drawable.chatbubblesquarequestion),
            contentDescription = "Chat Bubble Square Question",
            modifier = Modifier
                .fillMaxSize()
                .padding(start = 61.dp, top = 1.dp, bottom = 4.dp)
        )
        Text(
            text = "faq",
            color = Color.White,
            textAlign = TextAlign.Center,
            lineHeight = 1.17.em,
            style = TextStyle(fontSize = 30.sp, fontWeight = FontWeight.Bold),
            modifier = Modifier
                .fillMaxSize()
                .wrapContentHeight(align = Alignment.CenterVertically)
        )
    }
}

@Composable
fun RIDEMODE(modifier: Modifier = Modifier) {
    Box(
        modifier = modifier
            .requiredWidth(width = 256.dp)
            .requiredHeight(height = 62.dp)
            .clip(shape = RoundedCornerShape(16.dp))
    ) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .clip(shape = RoundedCornerShape(20.dp))
                .background(color = Color(0xffd63484))
        )
        Text(
            text = "Ride mode",
            color = Color.White,
            textAlign = TextAlign.Center,
            lineHeight = 1.09.em,
            style = TextStyle(fontSize = 32.sp, fontWeight = FontWeight.Bold),
            modifier = Modifier
                .fillMaxSize()
                .wrapContentHeight(align = Alignment.CenterVertically)
        )
    }
}

@Composable
fun EMERGENCY(modifier: Modifier = Modifier) {
    Box(
        modifier = modifier
            .requiredWidth(width = 256.dp)
            .requiredHeight(height = 81.dp)
    ) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .clip(shape = RoundedCornerShape(20.dp))
                .background(color = Color(0xffd63484))
        )
        Text(
            text = "EMERGENCY",
            color = Color.White,
            textAlign = TextAlign.Center,
            lineHeight = 1.09.em,
            style = TextStyle(fontSize = 32.sp, fontWeight = FontWeight.Bold),
            modifier = Modifier
                .fillMaxSize()
                .wrapContentHeight(align = Alignment.CenterVertically)
        )
    }
}

@Composable
fun SAFETYLESSONS(modifier: Modifier = Modifier) {
    Box(
        modifier = modifier
            .requiredWidth(width = 279.dp)
            .requiredHeight(height = 62.dp)
            .clip(shape = RoundedCornerShape(50.dp))
    ) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .clip(shape = RoundedCornerShape(20.dp))
                .background(color = Color(0xffd63484))
        )
        Text(
            text = "Safety lessons",
            color = Color.White,
            textAlign = TextAlign.Center,
            lineHeight = 1.09.em,
            style = TextStyle(fontSize = 32.sp, fontWeight = FontWeight.Bold),
            modifier = Modifier
                .fillMaxSize()
                .wrapContentHeight(align = Alignment.CenterVertically)
        )
    }
}

@Composable
fun Feedback(modifier: Modifier = Modifier) {
    Box(
        modifier = modifier
            .requiredWidth(width = 195.dp)
            .requiredHeight(height = 56.dp)
    ) {
        Text(
            text = "feedback",
            color = Color.White,
            textAlign = TextAlign.Center,
            lineHeight = 1.17.em,
            style = TextStyle(fontSize = 30.sp, fontWeight = FontWeight.Bold),
            modifier = Modifier
                .fillMaxSize()
                .wrapContentHeight(align = Alignment.CenterVertically)
        )
        Image(
            painter = painterResource(id = R.drawable.handheldtabletwriting),
            contentDescription = "Hand Held Tablet Writing",
            colorFilter = ColorFilter.tint(Color.Black),
            modifier = Modifier
                .fillMaxSize()
                .padding(start = 165.dp, top = 11.dp, bottom = 15.dp)
        )
    }
}

@Preview(widthDp = 412, heightDp = 917)
@Composable
private fun HOMEPAGEPreview() {
    HOMEPAGE(Modifier)
}
