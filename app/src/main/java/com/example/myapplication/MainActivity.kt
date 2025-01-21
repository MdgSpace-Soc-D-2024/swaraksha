import androidx.compose.runtime.Composable
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.*
import androidx.compose.ui.*
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.skydoves.landscapist.coil.CoilImage
import com.skydoves.landscapist.ImageOptions

@Composable
@Preview(showBackground = true)
fun HOMEPAGE() {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(color = Color(0xFFFFFFFF))
    ) {
        Column(
            modifier = Modifier
                .clip(shape = RoundedCornerShape(30.dp))
                .fillMaxWidth()
                .weight(1f)
                .background(color = Color(0xFFFCEFF0))
                .padding(top = 40.dp)
                .verticalScroll(rememberScrollState())
        ) {
            // Header with Image and Text
            Box(
                modifier = Modifier
                    .padding(bottom = 98.dp, start = 32.dp, end = 32.dp)
            ) {
                CoilImage(
                    imageModel = "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/95130c9d-5d87-402b-a122-53854c5932a7",
                    imageOptions = ImageOptions(contentScale = ContentScale.Crop),
                    modifier = Modifier
                        .height(215.dp)
                        .fillMaxWidth()
                        .clip(RoundedCornerShape(20.dp))
                )
                Text(
                    text = "Swaraksha",
                    color = Color(0xFF000000),
                    fontSize = 40.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier
                        .align(Alignment.BottomStart)
                        .padding(start = 16.dp, bottom = 16.dp)
                )
            }

            // made Button for Ride Mode
            CustomOutlinedButton(
                text = "Ride mode",
                backgroundColor = Color(0xFFD63484),
                textColor = Color(0xFFF4EEEE),
                modifier = Modifier.padding(bottom = 25.dp, start = 32.dp, end = 32.dp)
            )

            // made Button for Emergency SOS
             CustomOutlinedButton(
                text = "EMERGENCY",
                backgroundColor = Color(0xFFD63484),
                textColor = Color(0xFFF4EEEE),
                modifier = Modifier.padding(bottom = 37.dp, start = 43.dp, end = 43.dp)
            )

            //Safety Lessons
            CustomOutlinedButton(
                text = "Safety lessons",
                backgroundColor = Color(0xFFD63484),
                textColor = Color(0xFFF4EEEE),
                modifier = Modifier.padding(bottom = 202.dp, start = 62.dp, end = 62.dp)
            )

            // Footer Row
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp)
                    .background(color = Color(0x8CD63484))
                    .padding(horizontal = 16.dp)
            ) {
                Text(
                    text = "FAQ",
                    color = Color(0xFFF4EEEE),
                    fontSize = 20.sp,
                    modifier = Modifier.padding(end = 8.dp)
                )
                CoilImage(
                    imageModel = "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/50d60722-b615-4493-9c05-d14bdefee6fc",
                    imageOptions = ImageOptions(contentScale = ContentScale.Crop),
                    modifier = Modifier
                        .size(30.dp)
                        .padding(end = 8.dp)
                )
                Spacer(modifier = Modifier.weight(1f))
                Text(
                    text = "Feedback",
                    color = Color(0xFFF4EEEE),
                    fontSize = 20.sp,
                    modifier = Modifier.padding(end = 8.dp)
                )
                CoilImage(
                    imageModel = "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/82bc4eaa-cde7-4dda-b0ae-4137c9408eeb",
                    imageOptions = ImageOptions(contentScale = ContentScale.Crop),
                    modifier = Modifier.size(30.dp)
                )
            }
        }
    }
}

@Composable
fun CustomOutlinedButton(
    text: String,
    backgroundColor: Color,
    textColor: Color,
    modifier: Modifier = Modifier
) {
    OutlinedButton(
        onClick = { println("$text Pressed!") },
        border = BorderStroke(0.dp, Color.Transparent),
        colors = ButtonDefaults.outlinedButtonColors(backgroundColor = backgroundColor),
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(20.dp))
    ) {
        Text(
            text = text,
            color = textColor,
            fontSize = 24.sp,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.padding(vertical = 12.dp)
        )
    }
}
